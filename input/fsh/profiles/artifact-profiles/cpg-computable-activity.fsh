Profile: CPGComputableActivityDefinition
Parent: ActivityDefinition
Id: cpg-computableactivity
Title: "CPG Computable Activity Definition"
Description: "Defines the minimum expectations and behavior for a computable activity definition for use with content conforming to the CPG implementation guide"
* insert StructureDefinitionMetadata(cpg-computableactivity)
* subject[x] MS
* library 0..1 MS
* kind 1..1 MS
* profile 0..1 MS
* code 0..1 MS
* priority MS
* doNotPerform MS
* timing[x] MS
* location MS
* participant MS
* dynamicValue MS
  * path MS
  * expression MS