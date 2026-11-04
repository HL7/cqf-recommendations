CodeSystem: CPGMetricResultCS
Id: cpg-metric-result-cs
Title: "CPG Metric Result Code System"
Description: "The result of evaluating a compliance or adherence metric for a patient. Codes are organized in an is-a hierarchy, so a query for a parent code also returns its children. One code is reported per evaluation."
* insert KnowledgeArtifactExtensionsMeta
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-metric-result-cs"
* ^experimental = false
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^content = #complete
* #compliant "Compliant" "The care delivered conforms to the scoped recommendation: the proposed activity was fulfilled by a corresponding request and/or event as specified, including any timing constraints, or, for a recommendation against an activity, the activity was not performed."
  * #compliant-with-prior-non-compliance "Compliant with Prior Non-Compliance" "Compliant, with at least one prior evaluation of the same metric for the same patient non-compliant within the metric's declared lookback."
* #non-compliant "Non-Compliant" "The care delivered does not conform to the scoped recommendation and no accepted exemption applies: the proposed activity was not fulfilled, was fulfilled outside the specified time window, or, for a recommendation against an activity, the activity was performed."
* #at-risk-for-non-compliance "At Risk for Non-Compliance" "Not determined to be non-compliant, but the metric's declared predictive criterion indicates that non-compliance is likely within a declared horizon without intervention."
* #adherent "Adherent" "The scoped strategy's acceptance criteria are met. By default, when the metric declares no other criteria, every effective requirement (each applicable, non-exempted component) is met."
  * #adherent-with-prior-non-adherence "Adherent with Prior Non-Adherence" "Adherent, with at least one prior evaluation of the same metric for the same patient partially adherent or non-adherent within the metric's declared lookback."
* #partially-adherent "Partially Adherent" "The scoped strategy's acceptance criteria are not met, but its intermediate-attainment criteria are. By default, at least one effective requirement is met and at least one has failed."
* #non-adherent "Non-Adherent" "Neither the acceptance nor the intermediate-attainment criteria of the scoped strategy are met. By default, every effective requirement has failed; under authored criteria this can occur despite some fulfilled components, for example when a critical component has failed."
* #at-risk-for-non-adherence "At Risk for Non-Adherence" "Not determined to be non-adherent, but the metric's declared predictive criterion indicates that non-adherence is likely within a declared horizon without intervention."
* #pending "Pending" "The scoped element applies and its fulfillment window remains open; the expectation has not yet been met, has not yet failed, and no result is yet forced. A pending result is not final."
* #on-hold "On Hold" "An authorized, currently effective temporary suspension of the scoped element's expectations under the metric's policy, while the element still applies and is not exempted. Makes no claim of success or failure; the last established result is retained as history and the metric is re-evaluated on resumption. A workflow hold (for example a CPGHoldTask or an on-hold request) is evidence of suspension only where the metric's policy accepts it."
* #exempted "Exempted" "The scoped recommendation or strategy applies to the patient, but an exemption accepted by the metric's policy (e.g., contraindication, clinical judgment, or a patient refusal where the policy accepts it) removes the expectation. An exemption accepted by one strategy does not by itself exempt the same component in another."
* #not-applicable "Not Applicable" "The scoped recommendation or strategy does not apply to the patient (e.g., its applicability criteria are not met), so no compliance or adherence expectation exists. A component that does not apply does not by itself make its parent not applicable."
* #not-yet-evaluated "Not Yet Evaluated" "An explicit assertion that the metric, though defined for the patient's case, has not yet been evaluated. The absence of a result does not imply this code."
* #unknown "Unknown" "The metric was evaluated, but the result cannot be determined from the available data. An engine failure is reported through MeasureReport.status, not with this code; missing evidence for a refinement alone does not erase an established broader result."
