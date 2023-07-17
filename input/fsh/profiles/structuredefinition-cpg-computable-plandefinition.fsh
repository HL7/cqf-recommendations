Profile: CPGComputablePlanDefinition
Parent: $cpg-shareableplandefinition
Id: cpg-computableplandefinition
Description: "Defines the minimum expectations and behavior for a computable plan definition"
* insert DefinitionMetadata(cpg-computableplandefinition, StructureDefinition)
* extension contains
    $cpg-enabled named enabled 0..1 MS and
    $cpg-partOf named partOf 0..1 MS
* type 1..1 MS
* subject[x] MS
* library 0..1 MS
* action 1..* MS
* action.extension contains
    $cqf-strengthOfRecommendation named strengthOfRecommendation 0..1 MS and
    $cpg-directionOfRecommendation named directionOfRecommendation 0..1 MS and
    $cqf-qualityOfEvidence named qualityOfEvidence 0..1 MS
* action.prefix MS
* action.title MS
* action.description MS
* action.code MS
* action.reason MS
* action.documentation MS
* action.trigger MS
* action.condition MS
* action.timing[x] MS
* action.participant MS
* action.participant.role MS
* action.participant.role from $cpg-common-persona-valueset (preferred)
* action.participant.role ^binding.description = "Personas used in identifying participants and their roles in computable content"
* action.type MS
* action.definition[x] MS
* action.dynamicValue MS
* action.dynamicValue.path MS
* action.dynamicValue.expression MS
* action.action MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGComputablePlanDefinition
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGComputablePlanDefinition
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGComputablePlanDefinition
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGComputablePlanDefinition
Target: "http://hl7.org/fhir/object-implementation"