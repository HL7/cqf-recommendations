Extension: CPGPreferenceBehavior
Id: cpg-preferenceBehavior
Title: "CPG Preference Behavior Extension"
Description: """
Conveys the CPG's stance or preference disposition toward a particular option: supplemental information that helps the clinician interpret the recommendation and weigh it against alternatives. It does not explain why the option was surfaced (that is the concern of rationale and provenance). It conveys how the CPG regards the option once surfaced: is it preferred among the available options, simply recommended, neutral (allowable, no position taken), or not recommended for this patient?

Authored on PlanDefinition.action to convey the CPG's intended stance for an action at design time, and realized on the corresponding RequestGroup.action by the $apply operation. Applicability is expressed through an action condition of kind `applicability`, not through this extension.
"""
* insert StructureDefinitionMetadata(cpg-preferenceBehavior)
* insert ExtensionContext(PlanDefinition.action)
* insert ExtensionContext(RequestGroup.action)
* . ^comment = "Applicability determines whether an action is included at all; preference describes how the CPG regards the action once included. Preference behavior SHALL NOT be used to express or override applicability. A `not-recommended` preference is distinct from a recommendation against an activity (see the cpg-directionOfRecommendation extension) and from a proposal not to perform it (`doNotPerform`). The value may be computed or overridden at runtime through a `dynamicValue`."
* value[x] only CodeableConcept
* valueCodeableConcept from $cpg-preference-behavior-valueset (required)
  * ^binding.description = "How the CPG regards an option once surfaced"
