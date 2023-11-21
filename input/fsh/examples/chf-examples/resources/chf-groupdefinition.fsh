Instance: chf-groupdefinition
InstanceOf: cpg-groupdefinition
Usage: #example
Description: "CHF Group"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
  * valueExpression
    * language = #text/cql-identifier
    * expression = "Eligibility Criteria"
    * reference = Canonical(CHF)
* active = true
* type = #person
* actual = false
* code = $sct#42343007 "Congestive heart failure (disorder)"
* name = "Congestive Heart Failure Patients (definition)"