---
layout: default
title: Packaging
---

---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

## 5 Artifact Packaging
{: #artifact-packaging}

To facilitate publishing and distribution of knowledge artifacts, this Implementation Guide
defines several profiles that enable the use of FHIR [Bundle]({{site.data.fhir.path}}bundle.html)
to package knowledge artifacts, either independently, or as part of a collection of related
artifacts.

* Do not remove this line (it will not be displayed)
{:toc}

### 5.1 Artifact Lifecycle
{: #artifact-lifecycle}

Knowledge artifacts as represented within FHIR follow a general, high-level content development work flow:

* _draft_: The artifact is under development and not yet considered to be ready for normal use. In particular, there is no guarantee that the _version_ element associated with the artifact is established, and the actual content of the artifact may change.
* _active_: The artifact is ready for normal use. In particular, the content of the artifact related to the _version_ element is stable and SHALL NOT change. Changes to the artifact require a new _version_ to be introduced in _draft_ status.
* _retired_: The artifact has been withdrawn or superseded and should no longer be used.

In addition, the _experimental_ element may be used to indicate that the artifact is intended for testing/experimental usage only and should not be used in production settings.

### 5.2 Packaging Artifacts
{: #packaging-artifacts}

In general, artifacts such as libraries, measures, and test cases are packaged as a Bundle
of type `collection`, indicating that the Bundle is a collection of resources for distribution and
carries no additional processing semantics (as opposed to a `transaction`, or `document` bundle).

An artifact bundle contains the artifact as the first entry in the bundle, and optionally the
dependencies and associated artifacts as subsequent entries as follows:

1. **Artifact**: The main artifact resource for the package (such as a PlanDefinition, Measure or Library)
2. **Artifact Dependencies**: Any artifact dependencies required for use of the artifact
3. **Test Cases**: Any test cases defined for the artifact

Artifact content conforming to this implementation guide SHALL use the [CPGArtifactBundle](StructureDefinition-cpg-artifactbundle.html) profile to package artifacts for distribution.

#### 5.2.1 Packaging for Target Environments

Depending on the capabilities of intended target environments, artifacts may be packaged with different profiles to support different expectations. For example, a ValueSet may be packaged as only an ExecutableValueSet when it is intended for use in an environment that does not have the ability to expand a ComputableValueSet, and needs to be careful about overall resource size. In addition, some environments may have specific formatting expectations, such as the use of JSON for serialization of both FHIR resources and CQL ELM. The profiles in this implementation guide support the construction of these types of packages, but are not prescriptive about that, leaving flexibility for content implementation guides to make decisions relevant to their expected target environments.

Artifact content conforming to this implementation guide SHOULD provide artifact packages appropriate for their expected target environment, and SHALL provide guidance about what those expectations are.

### 5.3 Artifact Collections
{: #artifact-collections}

In addition to artifact bundles for distribution purposes, this implementation guide supports the definition of an _artifact collection_ using the Library resource to define a collection of related artifacts. The [CPGAssetCollection](StructureDefinition-cpg-assetcollection.html) profile supports this capability.

### 5.4 Packaging Test Cases
{: #packaging-test-cases}

Basic testing of artifact logic should involve at least one positive and negative test of each artifact. A test case is represented as a set of test resources, together with a expected outcome resource that defines the expected results. The test case bundle can then be used to package and distribute the test case.

For general purpose evaluation and decision support content, the expected outcome is represented using a [GuidanceResponse](http://hl7.org/fhir/guidanceresponse.html) resource, while the use case of measure evaluation is represented using a [MeasureReport](http://hl7.org/fhir/measurereport.html) resource. Test cases in general are represented using a bundle with the following general structure:

1. **Expected Outcome**: A GuidanceResponse or MeasureReport containing the expected outcome of the test case.
2. **Test Case Data**: Any number of additional resources that define the input test data for the test case.

Content conforming to this implementation guide SHALL use the [CPGTestCaseBundle](http://build.fhir.org/ig/HL7/cqf-recommendations/StructureDefinition-cpg-testcasebundle.html) bundle to define and distribute test cases.
