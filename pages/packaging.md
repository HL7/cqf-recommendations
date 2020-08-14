---
layout: default
title: Packaging
---

---

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

## 5 Artifact Packaging
{: #artifact-packaging}

To facilitate publishing and distribution of knowledge artifacts, this Implementation Guide
defines several profiles that enable the use of FHIR [Bundle]({{site.data.fhir.path}}bundle.html)
to package knowledge artifacts, either independently, or as part of a collection of related
artifacts.

### 5.1 Packaging Artifacts
{: #packaging-artifacts}

In general, artifacts such as libraries, measures, and test cases are packaged as a Bundle
of type `collection`, indicating that the Bundle is a collection of resources for distribution and
carries no additional processing semantics (as opposed to a `transaction`, or `document` bundle).

An artifact bundle contains the artifact as the first entry in the bundle, and optionally the
dependencies and associated artifacts as subsequent entries as follows:

1. **Artifact**: The main artifact resource for the package (such as a PlanDefinition, Measure or Library)
2. **Artifact Dependencies**: Any artifact dependencies required for use of the artifact
3. **Terminology Dependencies**: Any CodeSystem or ValueSet resources required for the artifact
4. **Test Cases**: Any test cases defined for the artifact

Artifact content conforming to this implementation guide SHALL use the CPGArtifactBundle profile to package artifacts for distribution.

### 5.4 Packaging Test Cases
{: #packaging-test-cases}

Basic testing of artifact logic should involve at least one positive and negative test of each artifact. A test case is represented as a set of test resources, together with a expected outcome resource that defines the expected results. The test case bundle can then be used to package and distribute the test case.

Content conforming to this implementation guide SHALL use the CPGTestCase bundle to define and distribute test cases.
