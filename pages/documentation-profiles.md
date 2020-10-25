---
layout: default
title: Profiles
---

# Using Profiles

FHIR profiles are a key aspect of supporting interoperable computable content, providing a formal mechanism for defining the data elements used by computable content, as well as conformance expectations for the computable content itself. Readers of this implementation guide should be familiar with the [Profiling FHIR](http://hl7.org/fhir/R4/profiling.html) topic in the base specification.

In addition to the profiles defined by this implementation guide, computable content generally deals with two broad categories of profiles:

* **Interoperability Profiles** that establish standards of data exchange between systems
* **Computability Profiles** that define the data expectations for computable content

## Interoperability Profiles

Interoperability profiles establish standards of data exchange between systems, and are typically defined in and distributed as part of _model_ implementation guides. To be useful, these profiles will generally be established across a broad range of systems, all operating in a particular environment, or in support of a particular set of use cases. Examples of these types of profiles are:

* [**International Patient Summary**](http://hl7.org/fhir/uv/ips/): International, specialty-agnostic, condition-independent patient summary
* [**AU Base**](http://fhir.hl7.org.au/fhir/base/history.shtml): Base Australian national implementation guide
* [**US Core Profiles**](http://hl7.org/fhir/us/core/): Base US national implementation guide
* [**QI Core Profiles**](http://hl7.org/fhir/us/qicore/): US-based quality improvement profiles

## Computability Profiles

Computability profiles describe the data expectations for computable content, and are typically defined in and distributed as part of _content_ implementation guides. For example, given the following condition:

```cql
define "Active Ambulatory Opioid Rx":
  [MedicationRequest: "Ambulatory Abuse Potential Opioids"] Rx
    where Rx.status = 'active'
		  and Rx.category contains "Outpatient"
```

In this example, the condition is referencing the `status` and `category` elements of the `MedicationRequest` resource. In order for this logic to be evaluated effectively, the system providing the `MedicationRequest` instance must understand these two elements and provide data for them if it is available. Computability profiles are used to communicate this information through FHIR profiles.

Note that for logic expressed in CQL, this information can be inferred by static analysis of the CQL expressions. The [$data-requirements](http://hl7.org/fhir/R4/library-operation-data-requirements.html) can be used to extract this information from a CQL Library.

## Implementation Considerations

Content conforming to this IG SHOULD select a set of base interoperability profiles appropriate for the intended target. For international usage, implementation guides conforming to this IG SHOULD use International Patient Summary.

In general, implementation of any given computable content is based on the intersection of the interoperability and computability profiles. As such, content authors must take care not to define computability profiles that conflict with interoperability profiles in their intended target scope.
