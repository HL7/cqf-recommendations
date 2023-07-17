ValueSet: CPGActiveCondition
Id: cpg-active-condition
Title: "CPG Active Condition"
Description: "Active condition clinical status codes"
* insert ValueSetMetadata(cpg-active-condition, ValueSet)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "Bryn Rhodes"
* ^version = "0.1.0"
* ^purpose = "Used to specify the set of clinical status codes that are considered active"
* ^copyright = "© CDC 2016+."
* ConditionClinicalStatusCodes#active "Active"
* ConditionClinicalStatusCodes#recurrence "Recurrence"
* ConditionClinicalStatusCodes#relapse "Relapse"