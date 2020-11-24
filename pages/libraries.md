---
layout: default
title: Libraries
---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

# 6.0.0 Using Libraries
{: #using-libraries}

This implementation guide uses the Library resource to represent libraries of computable content (such as Clinical Quality Language libraries). The guidance here builds on the [Library](http://hl7.org/fhir/R4/clinicalreasoning-knowledge-artifact-representation.html#library) topic in the FHIR Clinical Reasoning module, providing additional guidance on the use of libraries within computable guidelines.

* Do not remove this line (it will not be displayed)
{:toc}

## 6.1.0 Using CQL
{: #using-cql}

### 6.1.1 CQL Libraries
{: #cql-libraries}

Any CQL library referenced by a computable artifact SHALL contain a library declaration line as the first line of the library.

The library identifier SHALL be a valid un-quoted identifier and SHALL NOT contain underscores

The library declaration line SHALL contain a version number.

The library version number SHALL follow the convention: `<major>.<minor>.<patch>`

#### 6.1.1.1 Library Versioning
{: #library-versioning}

This implementation guide uses an approach to versioning libraries used within computable guidelines to help track and manage dependencies. The approach used here is based on the [Apache APR Versioning Scheme](https://apr.apache.org/versioning.html).

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

#### 6.1.1.2 Nested Libraries
{: #nested-libraries}

CQL allows libraries to re-use logic already defined in other libraries. This is accomplished by utilizing the `include` declaration:

```cql
include CommonFHIR version '2.0.0' called Common
```

The set of all CQL libraries used from any given computable artifact SHALL be structured such that all references to CQL components from a given resource are included in a single library.

Because of this conformance statement, resources that reference CQL expression definitions only need to reference a single _primary library_, eliminating the need to qualify expression definitions from references in the resource.

#### 6.1.1.3 Library Namespaces
{: #library-namespaces}

CQL allows libraries to define a namespace that can be used to organize libraries across different groups of authors. Within a namespace, library names are required to be unique. Across namespaces, the same library name may be reused. For example, OrganizationA and OrganizationB can both define a library named `Common`, so long as they use different namespaces. For example, consider the following library declaration:

```
library CMS.Common version '2.0.0'
```

This example declares a library named Common in the CMS namespace. Per the CQL specification, the namespace for a library is included in the [ELM](#translation-to-elm), along with a URI that provides a globally unique, stable identifier for the namespace. As an example, the URI for the CMS namespace might be `http://ecqi.healthit.gov/ecqm/measures`.

Although the URI for a CQL namespace SHOULD correspond to a reachable web address (i.e. a URL), this is not required. However, global uniqueness of the namespace URI is required in order to avoid namespace clashes.

### 6.1.2 Data Model
{: #data-model}

CQL can be used with any data model. In the context of a given computable artifact, any referenced CQL library SHALL identify the data model with a `using` declaration that includes a version specifier.

All CQL expressions used directly or indirectly within an artifact SHALL reference a single data model, with the exception that the `System` model is always implicitly referenced.

For example:

```cql
using FHIR version '4.0.0'
```
### 6.1.3 Code Systems
{: #code-systems}

Within CQL, the identifier of any code system reference SHALL be specified using a URI for the code system.

The URI SHALL be the canonical URL for the code system as defined by either the base FHIR specification or the referenced `CodeSystem` resource.

The URI MAY include a version, consistent with the URI specification for FHIR and the code system

For example:

```cql
codesystem "SNOMEDCT:2017-09": 'http://snomed.info/sct'
  version 'http://snomed.info/sct/731000124108/version/201709'
```

The canonical URL for a code system is a globally unique, stable, version-independent identifier for the code system. The base FHIR specification defines canonical URLs for most common code systems [here](http://hl7.org/fhir/R4/terminologies-systems.html).

The local identifier for the codesystem ("SNOMED-CT" in this case) SHOULD include the friendly name of the code system and MAY include an indication of the version, separated with a colon.

Version information for code systems is not required to be included in computable guideline CQL; terminology versioning information may be specified externally. However, if versioning information is included, it must be done in accordance with the terminology usage specified by FHIR.

### 6.1.4 Value Sets
{: #value-sets}

Value sets are used to provide a level of indirection between the concepts you're referencing in the logic and the way those concepts are specifically defined. By using a value set, you can define that concept in terms of different code systems, and it has the added benefit of providing a sort of "configuration point" for local implementation to map local concepts.

When using value sets, authors can either find value sets that are already defined (in the VSAC, or elsewhere), or construct value sets themselves. When constructing value sets, care should be taken not to create duplicate value sets (i.e. value sets with the same purpose and definition). When using published value sets, care must be taken to ensure that they are both actively stewarded (i.e. kept up to date in the published repository) and actively maintained when used in production settings.

When using value set declarations, authors should use the name of the value set as defined externally to avoid introducing any potential confusion of meaning. One exception to this is when different value sets are defined with the same name in an external repository, then some additional aspect is required to ensure uniqueness of the names within the CQL library.

Within CQL, the identifier of any value set reference SHALL be specified using a URI for the value set.

The URI SHALL be the canonical URL for the value set as defined by either the base FHIR specification or the referenced `ValueSet` resource.

The URI MAY include a version, consistent with versioned canonical URL references in FHIR

For example:

```cql
valueset "Acute Pharyngitis": 'valueset "Acute Pharyngitis": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011'
```

The canonical URL for a value set is typically defined by the value set author, though it may be provided by the publisher as well. For example, value sets defined in the Value Set Authority Center and exposed via the VSAC FHIR interface have a base URL of `http://cts.nlm.nih.gov/fhir/`. This base is then used to construct the canonical URL for the value set (in the same way as any FHIR URL) using the resource type (`ValueSet` in this case) and the id (the value set OID in this case).

The local identifier for the value set within CQL should be the same as the name of the published value set. However, because the name of the value set is not guaranteed to be unique, it is possible to reference multiple value sets with the same name, but different identifiers. When this happens in a CQL library, the local identifier should be the name of the value set with a qualifying suffix to preserve the value set name as a human-readable artifact, but still allow unique reference within the CQL library.

For example:

```cql
valueset "Acute Pharyngitis (1)": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011.1'
valueset "Acute Pharyngitis (2)": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.464.1003.102.12.1011.2'
```

Version information for value sets is not required to be included in computable guideline CQL; terminology versioning information may be specified externally. However, if versioning information is included, it must be done in accordance with the terminology usage specified by FHIR.

#### 6.1.4.1 Value Set Version
{: #value-set-version}

When retrieving the expansion of a value set by version, the version indicator SHALL be appended to the canonical URL for the value set, separated by a pipe (`|`)

For example:

```cql
valueset "Encounter Inpatient SNOMEDCT Value Set":
   'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.666.7.307|20160929'
```

### 6.1.5 Codes
{: #codes}

When direct reference codes are represented within CQL, the logical identifier SHALL NOT be a URI and SHALL be a code from the referenced code system.

Using "direct-reference codes", involves declaring an identifier for a specific code in a code system, and using that directly within the logic. That's appropriate for cases where you know exactly what you want, and there's very little possibility for variation on that (i.e. systems are likely to use those codes directly, rather than have local codes that they are mapping to).

When using direct reference codes, authors should use the name of the code as defined externally to avoid introducing any potential confusion of meaning:

```cql
code "Venous foot pump, device (physical object)": '442023007' from "SNOMED-CT"
```

Note that for direct reference code usage, the local identifier (in the example above, the local identifier is `"Venous foot pump, device (physical object)"`) should be the same as the description of the code within the terminology in order to avoid conflicting with any usage or license agreements with the referenced terminologies, but can be different to allow for potential naming conflicts, as well as simplification of longer names when appropriate.

Although CQL supports both version-specific and version-independent specification of and comparison to direct reference codes, artifact authors should use version-independent direct reference codes and comparisons unless there is a specific reason not to (such as the code is retired in the current code system version). Even when using version-specific direct reference codes, authors should use equivalence (`~`) for the comparison (again, unless there is a specific reason to use version-specific comparison with equality (`=`)).

Note: Using direct-reference codes can be more difficult for implementations to map to local settings, because modification of the codes for local usage may require modification of the CQL, as opposed to the use of a value set which many systems already use to provide support for mapping to local codes.

### 6.1.6 Library-level Identifiers
{: #library-level-identifiers}

A _library-level identifier_ is any named expression, function, parameter, code system, value set, concept, or code defined in the CQL. The library name referenced in the library-line, the data model, and any referenced external library should not be considered library-level identifiers. Library-level identifiers should be given a descriptive and meaningful name (avoid abbreviations) and conform to the following requirements:

Library-level identifiers:
* SHOULD use quoted identifiers,
* SHOULD Use Title Case, and
* MAY Include spaces.

For example:

```cql
define function
    "Includes Or Starts During"(Diagnosis "Diagnosis", Encounter "Encounter"):
        Interval[Diagnosis.onset, Diagnosis.abatement] includes Encounter.period
            or Diagnosis.onset during Encounter.period
```

### 6.1.7 Data Type Names
{: #data-type-names}

Data type names referenced in CQL SHALL use quoted identifiers and SHOULD use PascalCase.

### 6.1.8 Negation in FHIR
{: #negation-in-fhir}

Two commonly used patterns for negation in quality improvement are:

* Absence of evidence for a particular event
* Documentation of an event not occurring, with or without a reason

For the purposes of quality improvement, when looking for documentation that a particular event did not occur, it should be documented with a reason in order to meet the intent. If a reason is not part of the intent, then the absence of evidence pattern may be more appropriate, rather than documentation of an event not occurring.

To address the reason an action did not occur (negation rationale), the computable artifact must define the event it expects to occur using appropriate terminology to identify the kind of event (using a value set or direct reference code), and then use additional criteria to indicate that the event did not occur, as well as identifying a reason.

The following examples differentiate methods to indicate (a) presence of evidence of an action, (b) absence of evidence of an action, and (c) negation rationale for not performing an action. In each case, the "action" is an administration of medication included within a value set for "Antithrombotic Therapy".

#### 6.1.8.1 Presence
{: #presence}

Evidence that "Antithrombotic Therapy" (defined by a medication-specific value set) was administered:

    define "Antithrombotic Administered":
      ["MedicationAdministration": "Antithrombotic Therapy"] AntithromboticTherapy
        where AntithromboticTherapy.status = 'completed'
          and AntithromboticTherapy.category ~ "Inpatient Setting"

#### 6.1.8.2 Absence
{: #absence}

No evidence that "Antithrombotic Therapy" medication was administered:

    define "No Antithrombotic Therapy":
      not exists (
        ["MedicationAdministration": "Antithrombotic Therapy"] AntithromboticTherapy
          where AntithromboticTherapy.status = 'completed'
            and AntithromboticTherapy.category ~ "Inpatient Setting"
      )

#### 6.1.8.3 Negation with or without Rationale
{: #negation-rationale}

Evidence that "Antithrombotic Therapy" medication administration did not occur for an acceptable medical reason as defined by a value set referenced by the computable artifact (i.e., negation rationale):

    define "Antithrombotic Not Administered":
      ["MedicationAdministration": "Antithrombotic Therapy"] NotAdministered
        where NotAdministered.notGiven is true
          and NotAdministered.reasonNotGiven in "Medical Reason"

In this example for negation rationale, the logic looks for a member of the value set "Medical Reason" as the rationale for not administering the medication. However, underlying systems might not represent the negated action with a code from the "Antithrombotic Therapy" value set. When justifying the reason for not administering a particular medication, clinicians do not generally select a specific medication, they most often indicate avoidance of a set of medications, typically defined by a value set used in a quality improvement artifact (such as a quality measure or a decision support rule). In these cases, the value set may be used as a placeholder to indicate that no medications from the given value set were administered. Implementations processing data reported in this way should take into account that the reported data may not be returned with a single code, but rather a value set identifier, and should consider data with the appropriate value set identifier as satisfying the criteria for value set membership.

Similarly, representing that a procedure for Cardiac Surgery was not performed should not require specification of which cardiac surgery in a value set was not performed, but only a reference to the value set defining the set of possible procedures that are expected to have been performed. The same process works for any application of negation rationale.

Within FHIR, the [valueset-reference](http://hl7.org/fhir/R4/extension-valueset-reference.html) extension can be used to indicate the defining value set for a negation.

### 6.1.9 Attribute Names
{: #attribute-names}

Data type attributes referenced from CQL SHOULD NOT use quoted identifiers and SHOULD use camelCase.

Examples of attributes conforming to this requirement are given below. Note however that the full list of valid attributes, is specified by the data model. For example, the following are valid attributes in FHIR:

```cql
period
authoredOn
result
```

### 6.1.10 Aliases and Argument Names
{: #aliases-and-argument-names}

Aliases are used in CQL as local variable names to refer to sections of code. When defining a function, argument names are used to create scoped variables that refer to the function inputs.

Aliases and argument names referenced in the CQL:
* SHOULD NOT use quoted identifiers,
* SHOULD use PascalCase,
* SHOULD use descriptive names (no abbreviations).

For example:

```cql
define "Encounters During Measurement Period":
    "Valid Encounters" QualifyingEncounter
        where QualifyingEncounter.period during "Measurement Period"

define function "ED Stay Time"(Encounter "Encounter"):
    duration in minutes of Encounter.period
```

## 6.2.0 Library Resources
{: #library-resources}

Inclusion of CQL content used within computable guideline artifacts is accomplished through the use of a Library resource. These libraries are then referenced from guideline artifacts using the `library` element. The content of the CQL library is included using the `content` element of the Library.

Content conforming to this implementation guide SHALL use at least the [cpg-shareablelibrary](StructureDefinition-cpg-shareablelibrary.html) profile for Library resources.

### 6.2.1 Library Name and URL
{: #library-name-and-url}

The identifying elements of a library SHALL conform to the following requirements:
* Library.url SHALL be `<CQL namepsace url>/Library/<CQL library name>`
* Library.name SHALL be `<CQL library name>`
* Library.version SHALL be `<CQL library version>`

For libraries included in FHIR implementation guides, the CQL namespace is defined by the implementation guide as follows:
* CQL namespace name SHALL be IG.packageId
* CQL namespace url SHALL be IG.canonicalBase

For CQL library source files, the convention SHOULD be:

```
filename = <CQL library name>.cql
```

To avoid issues with characters between web ids and names, library names SHALL NOT have underscores.

### 6.2.2 FHIR Type Mapping
{: #fhir-type-mapping}

CQL defined types map to types in FHIR according to the following mapping:

|CQL System Type |FHIR Type |
|---|---|
|`System.Boolean`|`FHIR.boolean`|
|`System.Integer`|`FHIR.integer`|
|`System.Decimal`|`FHIR.decimal`|
|`System.Date`|`FHIR.date`|
|`System.DateTime`|`FHIR.dateTime`|
|`System.Time`|`FHIR.time`|
|`System.String`|`FHIR.string`|
|`System.Quantity`|`FHIR.Quantity`|
|`System.Ratio`|`FHIR.Ratio`|
|`System.Any`|`FHIR.Any`|
|`System.Code`|`FHIR.Coding`|
|`System.Concept`|`FHIR.CodeableConcept`|
|`Interval<System.Date>`|`FHIR.Period`|
|`Interval<System.DateTime>`|`FHIR.Period`|
|`Interval<System.Quantity>`|`FHIR.Range`|

In addition:
* List types SHALL be lists of element types that map to FHIR
* Tuple types SHALL consist only of elements of types that map to FHIR

### 6.2.3 Parameters and Data Requirements
{: #parameters-and-data-requirements}

Parameters to CQL libraries SHALL be either CQL-defined types that map to FHIR types, or FHIR resource types, optionally with profile designations.

Top level expressions in CQL libraries SHALL return either CQL-defined types that map to FHIR types, or FHIR resources types, optionally with profile designations

Libraries used in computable guideline content SHALL use the `dataRequirement` element to identify any retrieves present in the CQL:

|Retrieve Element|DataRequirement Element|
|---|---|
|dataType|type|
|templateId|profile|
|context|subject|
|codeProperty|codeFilter.path or codeFilter.searchParam|
|codes (Concept)|codeFilter.code (for each Code present in the Concept)|
|codes (Code)|codeFilter.code|
|codes (ValueSetRef)|codeFilter.valueSet (as specified by the `id` of the ValueSetDef referenced by the ValueSetRef)|
|dateProperty|dateFilter.path|
|dateLowProperty,dateHighProperty|dateFilter.path (resolved to an interval-valued property)|
|dateRange|dateFilter.path or dateFilter.searchParam|

### 6.2.4 RelatedArtifacts
{: #relatedartifacts}

Libraries used in computable guideline content SHALL use the `relatedArtifact` element to identify includes, code systems, value sets, and data models used by the CQL library:

|Dependency|RelatedArtifact representation|
|Data Model (using declaration)|`depends-on` with `url` of the ModelInfo Library (e.g. `http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1`)|
|Library (include declaration)|`depends-on` with `url` of the Library (e.g. `http://hl7.org/fhir/Library/FHIRHelpers|4.0.1`)|
|Code System|`depends-on` with `url` of the CodeSystem (e.g. `http://loing.org`)|
|Value Set|`depends-on` with `url` of the ValueSet (e.g. `http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1116.89`)|

### 6.2.5 Using Terminology in CQL Authoring
{: #using-terminology-in-cql-authoring}

FHIR supports various types of terminology-valued elements, including:

* [code](http://hl7.org/fhir/datatypes.html#code)
* [Coding](http://hl7.org/fhir/datatypes.html#Coding)
* [CodeableConcept](http://hl7.org/fhir/datatypes.html#CodeableConcept)

These types correspond directly to the CQL primitive types:

* [String](https://cql.hl7.org/09-b-cqlreference.html#string-1)
* [Code](https://cql.hl7.org/09-b-cqlreference.html#code-1)
* [Concept](https://cql.hl7.org/09-b-cqlreference.html#concept-1)

In addition to the type of element, FHIR provides the ability to bind these elements to specific codes, in the form of a direct-reference code (constraint to a specific code in a [CodeSystem](http://hl7.org/fhir/codesystem.html)), or a binding to a [ValueSet](http://hl7.org/fhir/valueset.html). These bindings can be different [binding strengths](http://hl7.org/fhir/codesystem-binding-strength.html):

* [required](http://hl7.org/fhir/terminologies.html#required) - To be conformant, the concept in this element SHALL be from the specified value set.
* [extensible](http://hl7.org/fhir/terminologies.html#extensible) - To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated. If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.
* [preferred](http://hl7.org/fhir/terminologies.html#preferred) - Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to do so to be considered conformant.
* [example](http://hl7.org/fhir/terminologies.html#example) - Instances are not expected or even encouraged to draw from the specified value set. The value set merely provides examples of the types of concepts intended to be included.

Within CQL, references to terminology code systems, value sets, codes, and concepts are directly supported, and all such usages are declared within CQL libraries, as described in the [Terminology](https://cql.hl7.org/02-authorsguide.html#terminology) section of the CQL Author's Guide.

When referencing terminology-valued elements within CQL, the following comparison operations are supported:

* [Equal (`=`)](https://cql.hl7.org/09-b-cqlreference.html#equal-3)
* [Equivalent (`~`)](https://cql.hl7.org/09-b-cqlreference.html#equivalent-3)
* [In (`in`)](https://cql.hl7.org/09-b-cqlreference.html#in-valueset)

## 6.3 Translation to ELM
{: #translation-to-elm}

Note: For an introduction to ELM, see [Chapter 4 - Logical Specification](https://cql.hl7.org/04-logicalspecification.html) of the CQL Specification.

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
{:.grid}
