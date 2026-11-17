CodeSystem: CPGPreferenceBehaviorCS
Id: cpg-preference-behavior-cs
Title: "CPG Preference Behavior Code System"
Description: "How a clinical practice guideline regards an option once it has been surfaced: preferred among the available options, recommended, neutral, or not recommended for the patient. Preference is distinct from applicability, which determines whether the option is included at all, and from the direction and strength of a recommendation."
* insert CodeSystemMetadata(cpg-preference-behavior)
* #not-recommended "Not Recommended" "The CPG does not favor this option for this patient among the available alternatives. Distinct from a safety negation (\"Do Not Perform\") and distinct from applicability (handled by condition.kind = applicability)."
* #recommended "Recommended" "The CPG positively recommends this option without singling it out as the best among alternatives."
* #preferred "Preferred" "The CPG's best choice among recommended options given patient-specific considerations. Typically at most one preferred option per grouping."
* #neutral "Neutral" "The CPG takes no position on recommendation or preference; an allowable option presented without endorsement."
