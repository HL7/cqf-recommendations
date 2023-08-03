Instance: cpg-common-patient-registry
InstanceOf: CapabilityStatement
Usage: #definition
Title: "CPG Common Patient Registry"
Description: "Describes the expected set of functionality required for a patient registry service that supports the common registration process defined in this implementation guide."
* insert CapabilityStatementMetadata(cpg-common-patient-registry)
* name = "CPGCommonPatientRegistry"
* kind = #requirements
* fhirVersion = #4.0.0
* format[+] = #xml
* format[+] = #json
* rest
  * mode = #server
  * resource
    * type = #Patient
    * interaction[+].code = #read
    * interaction[+].code = #update
    * interaction[+].code = #create
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "active"
      * type = #token
    * searchParam[+]
      * name = "birthdate"
      * type = #date
    * searchParam[+]
      * name = "name"
      * type = #string
    * searchParam[+]
      * name = "identifier"
      * type = #token
    * operation[+]
      * name = "$match"
      * definition = $patient-match-operation
    * operation[+]
      * name = "$summary"
      * definition = $cpg-common-patient-summary-operation