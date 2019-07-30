---
layout: default
title: Libraries
---

# Using Libraries

This implementation guide uses the Library resource to represent libraries of computable content (such as Clinical Quality Language libraries). The guidance here builds on the [Library](http://hl7.org/fhir/R4/clinicalreasoning-knowledge-artifact-representation.html#library) topic, providing additional guidance on the use of libraries within computable guidelines.

## Using CQL

Note that the content specified here is largely equivalent to the conformance requirements for the use of CQL within quality measure authoring, defined in the [FHIR Quality Measure Implementation Guide](http://hl7.org/fhir/us/cqfmeasures/2019May/).

### CQL Libraries

Any CQL library referenced by a computable artifact SHALL contain a library declaration line as the first line of the library.

The library declaration line SHALL contain a version number.

The library version number SHALL follow the convention: <major>.<minor>.<patch>

#### Library Versioning

This implementation guide uses an approach to versioning libraries used within computable guidelines to help track and manage dependencies. The approach used	 here is based on the [Apache APR Versioning Scheme](https://apr.apache.org/versioning.html).

There are three main types of changes that can be made to a library:

1. **Major**: A change that alters the public use of the components of a library
2. **Minor**: A change that adds new components or functionality but does not change existing components. 
3. **Patch**: A change that does not impact the public use of the library, but only corrects or improves the originally intended functionality.

By exposing version numbers that identify all three types of changes, libraries can be versioned in a way that makes clear when a change will impact usage, versus when a change can potentially be safely incorporated as an update.

Content conforming to this implementation guide SHALL increment major, minor, and patch version numbers for the CQL consistent with the types of changes made to the content.

For example:

```cql
library EXM146 version '1.0.0'
```

This would indicate the first major version of the EXM146 library. A minor change could be released by incrementing the minor version:

```cql
library EXM146 version '1.1.0'
```

And a major change could be released by incrementing the major version, and resetting the minor version: Minor changes are expected to retain backwards-compatibility, but may introduce new features and functionality, while patch changes are expected to retain forward and backwards-compatibility, and may only be used to fix issues.

#### Nested Libraries

CQL allows libraries to re-use logic already defined in other libraries. This is accomplished by utilizing the `include` declaration:

```cql
include Common_FHIR version '2.0.0' called Common
```

The set of all CQL libraries used from any given computable artifact SHALL be structured such that all references to CQL components from a given resource are included in a single library.

Because of this conformance statement, resources that reference CQL expression definitions only need to reference a single _primary library_, eliminating the need to qualify expression definitions from references in the resource.

### Data Model

CQL can be used with any data model. In the context of a given computable artifact, any referenced CQL library SHALL identify the data model with a `using` declaration that includes a version specifier.

All CQL expressions used directly or indirectly within an artifact SHALL reference a single data model, with the exception that the `System` model is always implicitly referenced.

For example:

```cql
using FHIR version '4.0.0'
```

### Code Systems

Within CQL, the identifier of any code system reference SHALL be specified using a URI for the code system.

The URI SHALL be the canonical URL for the code system as defined by either the base FHIR specification or the referenced `CodeSystem` resource.

The URI MAY include a version, consistent with the URI specification for FHIR and the code system

For example:

```cql
codesystem "SNOMEDCT:2017-09": 'http://snomed.info/sct/731000124108' 
  version 'http://snomed.info/sct/731000124108/version/201709'
```

The canonical URL for a code system is a globally unique, stable, version-independent identifier for the code system. The base FHIR specification defines canonical URLs for most common code systems [here](http://hl7.org/fhir/R4/terminologies-systems.html).

The local identifier for the codesystem ("SNOMED-CT" in this case) SHOULD include the friendly name of the code system and MAY include an indication of the version, separated with a colon.

Version information for code systems is not required to be included in computable guideline CQL; terminology versioning information may be specified externally. However, if versioning information is included, it must be done in accordance with the terminology usage specified by FHIR.

## Value Sets

Within CQL, the identifier of any value set reference SHALL be specified using a URI for the value set.

The URI SHALL be the canonical URL for the value set as defined by either the base FHIR specification or the referenced `ValueSet` resource.

The URI MAY include a version, consistent with versioned canonical URL references in FHIR

For example:

```cql
valueset "Acute Pharyngitis": 'valueset "Acute Pharyngitis": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011'
```

The canonical URL for a value set is typically defined by the value set author, though it may be provided by the publisher as well. For example, value sets defined in the Value Set Authority Center and exposed via the VSAC FHIR interface have a base URL of `https://cts.nlm.nih.gov/fhir/`. This base is then used to construct the canonical URL for the value set (in the same way as any FHIR URL) using the resource type (`ValueSet` in this case) and the id (the value set OID in this case).

The local identifier for the value set within CQL should be the same as the name of the published value set. However, because the name of the value set is not guaranteed to be unique, it is possible to reference multiple value sets with the same name, but different identifiers. When this happens in a CQL library, the local identifier should be the name of the value set with a qualifying suffix to preserve the value set name as a human-readable artifact, but still allow unique reference within the CQL library.

For example:

```cql
valueset "Acute Pharyngitis (1)": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011.1'
valueset "Acute Pharyngitis (2)": 'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011.2'
```

Version information for value sets is not required to be included in computable guideline CQL; terminology versioning information may be specified externally. However, if versioning information is included, it must be done in accordance with the terminology usage specified by FHIR.

#### Value Set Version

When retrieving the expansion of a value set by version, the version indicator SHALL be apended to the canonical URL for the value set, separated by a pipe (`|`)

For example:

```cql
valueset "Encounter Inpatient SNOMEDCT Value Set":
   'https://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.666.7.307|20160929' 
```

### Codes

When direct reference codes are represented within CQL, the logical identifier SHALL NOT be a URI and SHALL be a code from the referenced code system.

```cql
code "Venous foot pump, device (physical object)": '442023007' from "SNOMED-CT"
```

Note that for direct reference code usage, the local identifier (in the example above, the local identifier is `"Venous foot pump, device (physical object)"`) should be the same as the description of the code within the terminology in order to avoid conflicting with any usage or license agreements with the referenced terminologies, but can be different to allow for potential naming conflicts, as well as simplification of longer names when appropriate.

### Library-level Identifiers

A _library-level identifier_ is any named expression, function, parameter, code system, value set, concept, or code defined in the CQL. The library name referenced in the library-line, the data model, and any referenced external library should not be considered library-level identifiers. Library-level identifiers should be given a descriptive and meaningful name (avoid abbreviations) and conform to Conformance Requirement 10.

Library-level identifiers referenced in the CQL SHOULD use quoted identifiers, SHOULD Use Title Case, and MAY Include spaces.

For example:

```cql
define function
    "Includes Or Starts During"(Diagnosis "Diagnosis", Encounter "Encounter, Performed"):
        Diagnosis.prevalencePeriod includes Encounter.relevantPeriod
            or Diagnosis.prevalencePeriod starts during Encounter.relevantPeriod
```

### Data Type Names

Data type names referenced in CQL SHALL use quoted identifiers and SHOULD use PascalCase.

### Negation in FHIR

Two commonly used patterns for negation in quality improvement are:

* Absence of evidence for a particular event
* Documentation of an event not occurring, together with a reason

For the purposes of quality improvement, when looking for documentation that a particular event did not occur, it must be documented with a reason in order to meet the intent. If a reason is not part of the intent, then the absence of evidence pattern should be used, rather than documentation of an event not occurring.

To address the reason an action did not occur (negation rationale), the computable artifact must define the event it expects to occur using appropriate terminology to identify the kind of event (using a value set or direct reference code), and then use additional criteria to indicate that the event did not occur, as well as identifying a reason.

The following examples differentiate methods to indicate (a) presence of evidence of an action, (b) absence of evidence of an action, and (c) negation rationale for not performing an action. In each case, the "action" is an administration of medication included within a value set for "Antithrombotic Therapy".

#### Presence

Evidence that "Antithrombotic Therapy" (defined by a medication-specific value set) was administered:

    define "Antithrombotic Administered":
      ["MedicationAdministration": "Antithrombotic Therapy"] AntithromboticTherapy
        where AntithromboticTherapy.status = 'completed'
          and AntithromboticTherapy.category = "Inpatient Setting"

#### Absence

No evidence that "Antithrombotic Therapy" medication was administered:

    define "No Antithrombotic Therapy":
      not exists (
        ["MedicationAdministration": "Antithrombotic Therapy"] AntithromboticTherapy
          where AntithromboticTherapy.status = 'completed'
            and AntithromboticTherapy.category = "Inpatient Setting"
      )
      
#### Negation Rationale

Evidence that "Antithrombotic Therapy" medication administration did not occur for an acceptable medical reason as defined by a value set referenced by the computable artifact (i.e., negation rationale):

    define "Antithrombotic Not Administered":
      ["MedicationAdministration": "Antithrombotic Therapy"] NotAdministered
        where NotAdministered.notGiven is true
          and NotAdministered.reasonNotGiven in "Medical Reason"
      
In this example for negation rationale, the logic looks for a member of the value set "Medical Reason" as the rationale for not administering the medication. However, underlying systems might not represent the negated action with a code from the "Antithrombotic Therapy" value set. When justifying the reason for not administering a particular medication, clinicians do not generally select a specific medication, they most often indicate avoidance of a set of medications, typically defined by a value set used in a quality improvement artifact (such as a quality measure or a decision support rule). In these cases, the value set may be used as a placeholder to indicate that no medications from the given value set were administered. Implementations processing data reported in this way should take into account that the reported data may not be returned with a single code, but rather a value set identifier, and should consider data with the appropriate value set identifier as satisfying the criteria for value set membership.

Similarly, representing that a procedure for Cardiac Surgery was not performed should not require specification of which cardiac surgery in a value set was not performed, but only a reference to the value set defining the set of possible procedures that are expected to have been performed. The same process works for any application of negation rationale.

Within FHIR, the [valueset-reference](http://hl7.org/fhir/R4/extension-valueset-reference.html) extension can be used to indicate the defining value set for a negation.

### Attribute Names

Data type attributes referenced from CQL SHOULD NOT use quoted identifiers and SHOULD use camelCase.

Examples of attributes conforming to this requirement are given below. For a full list of valid of attributes, refer to an appropriate data model specification such as International Patient Summary.

```cql
period
authoredOn
result
```

### Aliases and Argument Names

Aliases are used in CQL as local variable names to refer to sections of code. When defining a function, argument names are used to create scoped variables that refer to the function inputs.

Aliases and argument names referenced in the CQL SHOULD NOT use quoted identifiers, SHOULD use PascalCase, and SHOULD use descriptive names (no abbreviations).

For example:

```cql
define "Encounters During Measurement Period":
    "Valid Encounters" QualifyingEncounter
        where QualifyingEncounter.period during "Measurement Period"

define function "ED Stay Time"(Encounter "Encounter, Performed"):
    duration in minutes of Encounter.period
```

## 3 Translation to ELM

Tooling exists to support translation of CQL to ELM for distribution in XML or JSON formats. These distributions SHOULD be included with computable artifacts to facilitate implementation. The existing translator tooling applies to both measure and decision support development, and has several options available to make use of different data models in different environments. For computable guideline content development with FHIR, the following options are recommended:

| Option | Description | Recommendation |
|----|----|----|
| EnableAnnotations | This instructs the translator to include the source CQL as an annotation within the ELM. | This option SHOULD be used to ensure that the distributed ELM could be linked back to the source CQL. |
| EnableLocators | This instructs the translator to include line number and character information for each ELM node. | This option SHOULD be used to ensure that distributed ELM could be tied directly to the input source CQL. |
| DisableListDemotion | This instructs the translator to disallow demotion of list-valued expressions to singletons. The list demotion feature of CQL is used to enable functionality related to use with FHIRPath. | This option SHOULD be used with quality improvement artifacts to ensure list demotion does not occur unexpectedly. |
| DisableListPromotion | This instructs the translator to disallow promotion of singletons to list-valued expressions. The list promotion feature of CQL is used to enable functionality related to use with FHIRPath. | This option SHOULD be used with quality improvement artifacts to ensure list promotion does not occur unexpectedly. |
| DisableMethodInvocation | This instructs the translator to disallow method-style invocation. The method-style invocation feature of CQL is used to enable functionality related to use with FHIRPath. | This option SHOULD be used with quality improvement artifacts to ensure method-style invocation cannot be used within eCQMs. |
| EnableDateRangeOptimization | This instructs the translator to optimize date range filters by moving them inside retrieve expressions. | This feature MAY be used with quality improvement artifacts. |
| EnableResultTypes | This instructs the translator to include inferred result types in the output ELM. | This feature MAY be used with quality improvement artifacts. |
| EnableDetailedErrors | This instructs the translator to include detailed error information. By default, the translator only reports root-cause errors. | This feature SHOULD NOT be used with quality improvement artifacts. |
| DisableListTraversal | This instructs the translator to disallow traversal of list-valued expressions. With quality improvement artifacts, disabling this feature would prevent a useful capability. | This feature SHOULD NOT be used with quality improvement artifacts. |

## Library Resources

Inclusion of CQL content used within computable guideline artifacts is accomplished through the use of a Library resource. These libraries are then referenced from guideline artifacts using the `library` element. The content of the CQL library is included using the `content` element of the Library.

Content conforming to this implementation guide SHALL use the [cpg-library](StructureDefinition-cpg-library.html) profile for Library resources.

### Data Requirements

Libraries used in computable guideline content SHALL use the `dataRequirement` element to declare terminologies referenced by the CQL content.

