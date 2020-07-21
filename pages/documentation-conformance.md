---
layout: default
title: Conformance
---

# **Conformance**

This page summarizes the overall conformance requirements.

## **Common Pathway**

* Content conforming to this implementation guide SHALL identify processes using the [Common Processes code system](http://build.fhir.org/ig/HL7/cqf-recommendations/CodeSystem-cpg-common-process.html).

## **Libraries** 

### **Library Resources**

* Content conforming to this implementation guide SHALL use the [cpg-library](StructureDefinition-cpg-library.html) profile for Library resources.

#### **Data Requirements** 

* Libraries used in computable guideline content SHALL use the `dataRequirement` element to declare terminologies referenced by the CQL content.

* Library.url SHALL be [CQL namepsace url]/Library/[CQL library name]

* Library.version SHALL be [CQL library version]

* CQL namespace name SHALL be IG.packageId

* CQL namespace url SHALL be IG.canonicalBase

* For CQL library source files, the convention SHOULD be:

    filename = <Library_Name>.cql

* To avoid issues with characters between web ids and names, library names SHALL NOT have underscores.

## **Using Profiles**

### **Implementation Considerations**

* Content conforming to this IG SHOULD select a set of base interoperability profiles appropriate for the intended target. For international usage, implementation guides conforming to this IG SHOULD use International Patient Summary.

## **Structuring Recommendations**

### **Recommendation Definitions**

#### **Personas**

* Content conforming to this implementation guide SHALL identify personas using the [Common Personas](CodeSystem-cpg-common-persona.html) code system.

#### **Activities**

* Content conforming to this implementation guide SHALL use the [CPG Activity Definition](StructureDefinition-cpg-activitydefinition.html) profile when specifying activity definitions.

#### **Processes** 

* Content conforming to this implementation guide SHALL identify processes using the [Common Processes](CodeSystem-cpg-common-process.html) code system.

#### **Settings**

* Content conforming to this implementation guide SHALL identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

#### **Support**

##### **Guideline Supporting Information**

* Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.

* Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.

* Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.

#### **Representing Recommendations**

##### **Clinical Protocols** 

* Content conforming to this implementation guide SHALL use the [cpg-protocoldefinition](StructureDefinition-cpg-protocoldefinition.html) profile to represent clinical protocol definitions.

##### **Workflow Definitions** 

* Content conforming to this implementation guide SHALL use the [cpg-workflowdefinition](StructureDefinition-cpg-workflowdefinition.html) profile to represent workflow definitions.

##### **Recommendations** 

* Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.

##### **Order Sets** 

* Content conforming to this implementation guide SHALL use the [cpg-ordersetdefinition](StructureDefinition-cpg-ordersetdefinition.html) profile to represent order sets. 

### **Recommendation Instances**

* Content conforming to this implementation guide SHALL use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.

## **Using Terminology**

### **Code Systems**

* Standard and established code systems should be used whenever possible. Only in the case that existing code systems do not provide the necessary concepts should new code systems be defined. If required, code systems defined by content conforming to this IG SHALL use the [cpg-publishablecodesystem](StructureDefinition-cpg-publishablecodesystem.html) profile.

### **Value Sets**

* The publishable profile adds must support to elements, and includes extensions that are important for implementers to use and understand a value set. The computable profile adds extensions, must support requirements, and explanatory text so that a value set using this profile selectively supports only one technique for defining the content of expansions. The executable profile adds support for including a persisted point-in-time expansion that SHALL conform to the chosen compositional style for the value set. The included point-in-time expansion can then be used by FHIR implementations that do not have a FHIR terminology service capable of evaluating the value set to create a real-time $expand. It also provides all the concepts needed in the expansion so that a complete code system resource is not required.
 
* Whenever possible, value sets SHOULD be defined by crafting one or more inclusion and exclusion criteria that use code system properties, attributes, and relationships. In this way, the resulting definition can be used to find potential new value set members with each new code system version update. When this is not possible, value sets may be wholly or partially defined by enumerating single concept codes.
 
* Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. For these cases, the description of the construction of the value set SHOULD be represented with non-FHIR expressions using a computable expression in some terminology grammar. For value sets expressed in this way, the language must be sufficiently open and accessible that a user could construct the value set following the semantics without needing to use a proprietary implementation.
 
* Some value sets cannot be defined using the standard FHIR compose structure with include and exclude elements. For these cases, the description of the construction of the value set SHOULD be represented with non-FHIR expressions using a computable expression in some terminology grammar. For value sets expressed in this way, the language must be sufficiently open and accessible that a user could construct the value set following the semantics without needing to use a proprietary implementation.

* The cpg-executablevalueset profile supports providing a point-in-time expansion of the value set members using the `ValueSet.expansion` element containing specific individual concept codes obtained as a result of the computed expansion of the value set at the time of publication. The expansion element can be used to support environments where the actual definition cannot be evaluated. As new versions of the value set, and/or as new versions of the code systems used by the value set are released, the expansion content will need to be updated to incorporate newly defined codes that meet the value set intent. Before and periodically during production use, value set expansions SHOULD be updated.

* Value sets defined by content conforming to this IG SHOULD include an expansion element with a timestamp and enough information to determine whether the computed expansion is current, or needs to be updated.
 
* Value sets defined by content conforming to this IG SHALL use the [cpg-computablevalueset](StructureDefinition-cpg-computablevalueset.html) profile to define value set member content in one of three ways. This profile requires that one and only one of the following three approaches can be used for an instance of the value set, in order of preference:

* Value sets defined by content conforming to this IG SHALL use the [cpg-publishablevalueset](StructureDefinition-cpg-publishablevalueset.html) profile.

### **Using Terminology in CQL Authoring 

* To be conformant, the concept in the [required](http://hl7.org/fhir/terminologies.html#required) element SHALL be from the specified value set.

* To be conformant, the concept in the [extensible](http://hl7.org/fhir/terminologies.html#extensible) element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated. If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.