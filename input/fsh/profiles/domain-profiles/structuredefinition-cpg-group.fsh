Profile: CPGGroup
Parent: Group
Id: cpg-group
Title: "CPG Group"
Description: "Defines an actual group of subjects, suitable for use in various contexts, such as a enrollment in a pathway or participant in a study"
* insert StructureDefinitionMetadata(cpg-group)
* identifier MS
* active MS
* type only code
* type = #person (exactly)
* type MS
* actual only boolean
* actual = true (exactly)
* actual MS
* code MS
* name 1..1 MS
* characteristic 0..0
* characteristic ^mustSupport = false
* member MS
* member.entity only Reference($cpg-patient)
* member.entity MS
* member.period MS
* member.inactive MS