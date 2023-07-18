Profile: CPGComputableActivityDefinition
Parent: $cpg-shareableactivitydefinition
Id: cpg-computableactivity
Title: "CPG Computable Activity Definition"
Description: "Defines the minimum expectations and behavior for a computable activity definition for use with content conforming to the CPG implementation guide"
* insert DefinitionMetadata(cpg-computableactivity, StructureDefinition)
* subject[x] MS
* library 0..1 MS
* kind 1..1 MS
* profile 0..1 MS
* code 0..1 MS
* timing[x] MS
* location MS
* participant MS
* dynamicValue MS
  * path MS
  * expression MS

// Mapping: computableactivity-rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGComputableActivityDefinition
// Target: "http://hl7.org/v3"

// Mapping: computableactivity-workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGComputableActivityDefinition
// Target: "http://hl7.org/fhir/workflow"

// Mapping: computableactivity-w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGComputableActivityDefinition
// Target: "http://hl7.org/fhir/fivews"

// Mapping: computableactivity-objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGComputableActivityDefinition
// Target: "http://hl7.org/fhir/object-implementation"