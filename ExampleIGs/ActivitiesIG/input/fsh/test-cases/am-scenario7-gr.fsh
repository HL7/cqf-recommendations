Instance: am-scenario7-gr
InstanceOf: GuidanceResponse
Usage: #example
* contained = output
* moduleCanonical = "http://hl7.org/fhir/uv/cpg/Library/administermedication-library"
* status = #success
* subject = Reference(am-scenario7-patient)
* outputParameters = Reference(output)

Instance: output
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "Inclusion Criteria"
  * valueBoolean = true
* parameter[+]
  * name = "Is Recommendation Applicable"
  * valueBoolean = false