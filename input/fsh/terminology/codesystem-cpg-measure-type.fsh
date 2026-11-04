CodeSystem: CPGMeasureTypeCS
Id: cpg-measure-type-cs
Title: "CPG Measure Type Code System"
Description: "Additional measure types for metrics defined as part of a computable clinical practice guideline. Each code specializes one of the base measure types, identified by the measure-type property."
* insert KnowledgeArtifactExtensionsMeta
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-measure-type-cs"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^property[+].code = #measure-type
* ^property[=].uri = "http://terminology.hl7.org/CodeSystem/measure-type"
* ^property[=].description = "The base measure type that this measure type specializes"
* ^property[=].type = #Coding
* #compliance "Compliance" "A process metric that evaluates whether the care delivered to a patient conforms to an individual guideline recommendation — typically whether the activity proposed by a CPGProposal was fulfilled by a corresponding request and/or event and, where specified, within the required time relative to the proposal or to an anchoring case feature. A compliance metric is scoped to a single CPGRecommendation (or a goal it supports) and evaluates the care process, not patient behavior."
  * ^property[+].code = #measure-type
  * ^property[=].valueCoding = $measure-type#process
* #adherence "Adherence" "A composite metric that evaluates where a patient is with respect to a CPGStrategy or CPGPathway as a whole, typically by rolling up the compliance and/or intermediate-outcome metrics scoped to the recommendations within that strategy or pathway, using logic defined by the guideline development group or the local implementation. Pathway adherence (colloquially 'on path' or 'off path') is a special case."
  * ^property[+].code = #measure-type
  * ^property[=].valueCoding = $measure-type#composite
