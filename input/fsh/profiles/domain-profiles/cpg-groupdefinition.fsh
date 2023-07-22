Profile: CPGGroupDefinition
Parent: Group
Id: cpg-groupdefinition
Title: "CPG Group Definition"
Description: "Represents the definition of a group of subjects, suitable for use in various contexts, such as a cohort definition, a recommendation inclusion or exclusion criteria, the members of a study, or a population criteria"
* insert StructureDefinitionMetadata(cpg-groupdefinition)
* obeys gdf-1
* extension contains $cqf-expression named expression 0..1 MS
* extension[expression] ^condition = "gdf-1"
* identifier MS
* active MS
* type only code
* type = #person (exactly)
* type MS
* actual only boolean
* actual = false (exactly)
* actual MS
* code MS
* name 1..1 MS
* characteristic MS
  * ^condition = "gdf-1"
* member 0..0

Invariant: gdf-1
Description: "Group definition must have either an expression or characteristics, but not both"
Severity: #error
Expression: "extension('http://hl7.org/fhir/StructureDefinition/cqf-expression').exists() xor characteristic.exists()"
XPath: "exists(f:extension)"