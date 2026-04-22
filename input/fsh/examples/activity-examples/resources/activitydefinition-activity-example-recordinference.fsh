Instance: activity-example-recordinference-ad
InstanceOf: CPGRecordInferenceActivity
Usage: #example
* title = "Activity Example Record Inference AD"
* insert ExampleActivityDefinitionMetadata(activity-example-recordinference-ad)
* description = "Example Activity Definition for a recommendation to record an inference"
* name = "ActivityExampleRecordInferenceAD"
* kind = #Task
* profile = Canonical(CPGRecordInferenceTask)
* code = $cpg-activity-type-cs#record-inference "Record an inference"
* doNotPerform = false
* dynamicValue[+]
  * path = "contained"
  * expression
    * language = #text/cql-expression
    * expression = "FHIR.Observation { id: FHIR.id { value: 'inference' }, extension: List<FHIR.Extension> { FHIR.Extension { url: FHIR.uri { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' }, value: FHIR.code { value: 'inferred' } } }, status: FHIR.ObservationStatus {value: 'final' }, code: FHIR.CodeableConcept { coding: List<FHIR.Coding> { FHIR.Coding { code: FHIR.code { value: 'Inference' } } } }, subject: FHIR.Reference { reference: FHIR.string { value: Patient.id.value } }, issued: FHIR.instant { value: Now() } }"
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/cql-expression
    * expression = "%resource.code"
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-expression
    * expression = "FHIR.Reference { reference: FHIR.string { value: '#inference' } }"