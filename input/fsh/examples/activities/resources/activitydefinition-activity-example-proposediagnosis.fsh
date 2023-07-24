

Instance: activity-example-proposediagnosis
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to propose a diagnosis"
* insert ActivityDefinitionMetadata(activity-example-proposediagnosis)
* name = "ActivityExampleProposeDiagnosis"
* title = "Activity Example Propose Diagnosis"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql-expression
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql-expression
* dynamicValue[=].expression.expression = "Condition { clinicalStatus: \"Active Condition\", verificationStatus: \"Provisional Condition\", category: \"Problem-list Item\", code: \"Ischemic Stroke\", subject: Patient, onset: Today() }"