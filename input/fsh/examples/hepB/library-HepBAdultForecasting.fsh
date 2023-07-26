Instance: HepBAdultForecastingLibrary
InstanceOf: Library
Usage: #example
* insert ExampleArtifactMetadata(HepBAdultForecastingLibrary, Library, HepBAdultForecasting)
* insert RelatedFHIRLibraries
* name = "HepBAdultForecasting"
* title = "Logic for Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age"
* type = $library-type#logic-library "Logic Library"
* description = "If an adult patient has not been immunized for Hep B and is indicated for a Hep B vaccine, providers should administer according to this forecast."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#384810002 "Immunization/vaccination management (procedure)"
* purpose = "Example artifact implementation of CDC ACIP Hep B vaccination guidelines for adults, 18 years and older, who have not yet been immunized."
* topic.text = "Hepatitus B Adult Immunization Forecasting"
* author[+].name = "Daryl Chertcoff"
* author[+].name = "Bryn Rhodes"
* relatedArtifact[+]
  * type = #documentation
  * display = "Immunization Calculation Engine - Hep B Vaccine Group - Hep B 2-dose Adult Series"
  * url = "https://cdsframework.atlassian.net/wiki/spaces/ICE/pages/14352491/Hep+B+Vaccine+Group#HepBVaccineGroup-ImmunizationSeries:HepB2-doseAdultSeries"
* relatedArtifact[+]
  * type = #documentation
  * display = "CDC MMWR Vol.67 / No.1 : Prevention of Hepatitis B Virus Infection in the United States: Recommendations of the Advisory Committee on Immunization Practices"
  * url = "http://www.cdc.gov/mmwr/volumes/67/rr/pdfs/rr6701-H.PDF"
* relatedArtifact[+]
  * type = #documentation
  * display = "April 2018 Recommendations for the use of adjuvanted hepatitis B vaccine (Heplisav-B, Dynavax)"
  * url = "https://www.cdc.gov/mmwr/volumes/67/wr/pdfs/mm6715a5-H.pdf"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/sid/cvx"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://example.org/fhir/uv/cpg/ValueSet/all-hepb-vaccines"
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #PatientBirthDate
  * use = #out
  * min = 0
  * max = "1"
  * type = #date
* parameter[+]
  * name = #"Age in Days when Patient is 18 Years minus 4 Days"
  * use = #out
  * min = 0
  * max = "1"
  * type = #integer
* parameter[+]
  * name = #"Patient is 18 Years Minus 4 Days or Older"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"No Hep B Shots were Administered before 18 Years minus 4 Days of Age"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Hep B Vaccine, Adjuvanted Immunization"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Immunization
* parameter[+]
  * name = #"First Valid Hep B Adjuvanted Adult Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Immunization
* parameter[+]
  * name = #"There Exists a Valid First Hep B Adjuvanted Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"There Exists a Valid Second Hep B Adjuvanted Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Patient Hep B Immunization History should be Evaluated in Adult Series"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Get Recommendation Overview"
  * use = #out
  * min = 0
  * max = "1"
  * type = #string
* parameter[+]
  * name = #"A Forecast for Hep B Adult Dose 1 Should be Made"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"A Forecast for Hep B Adult Dose 2 Should be Made"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Most Recent Hep B Adjuvanted Administration Date"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Any
* parameter[+]
  * name = #"Patient has Completed the Hep B Adult Series"
  * use = #out
  * min = 0
  * max = "1"
  * type = #boolean
* parameter[+]
  * name = #"Get Recommendation Detail"
  * use = #out
  * min = 0
  * max = "1"
  * type = #string
* parameter[+]
  * name = #"Second Valid Hep B Adjuvanted Adult Dose"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Immunization
* dataRequirement[0]
  * type = #Immunization
  * profile = "http://hl7.org/fhir/StructureDefinition/Immunization"
  * codeFilter
    * path = "vaccineCode"
    * valueSet = "http://example.org/fhir/uv/cpg/ValueSet/all-hepb-vaccines"
* dataRequirement[+]
  * type = #Immunization
  * profile = "http://hl7.org/fhir/StructureDefinition/Immunization"
  * codeFilter
    * path = "vaccineCode"
    * code = $cvx#189
* content
  * id = "ig-loader-HepBAdultForecasting.cql"
