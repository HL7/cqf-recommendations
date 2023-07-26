Instance: HepBAdultForecastingPD
InstanceOf: PlanDefinition
Usage: #example
* insert ExampleArtifactMetadata(HepBAdultForecastingPD, PlanDefinition, HepBAdultForecasting)
* title = "Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age"
* type = $plan-definition-type#eca-rule "ECA Rule"
* description = "If an adult patient has not been immunized for Hep B and is indicated for a Hep B vaccine, providers should administer according to this forecast."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#384810002 "Immunization/vaccination management (procedure)"
* purpose = "Example artifact implementation of CDC ACIP Hep B vaccination guidelines for adults, 18 years and older, who have not yet been immunized."
* topic.text = "Immunization Forecasting"
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
* library = "http://example.org/fhir/uv/cpg/Library/HepBAdultForecasting"
* action
  * title = "Hep B Immunization Forecast"
  * description = "Vaccinate Adult with specified Hep B forecast, if noted"
  * documentation
    * type = #documentation
    * display = "Immunization Calculation Engine - Hep B 2-dose Adult Series"
    * url = "https://cdsframework.atlassian.net/wiki/spaces/ICE/pages/14352491/Hep+B+Vaccine+Group#HepBVaccineGroup-ImmunizationSeries:HepB2-doseAdultSeries"
  * trigger
    * type = #named-event
    * name = "patient-view"
  * condition
    * kind = #applicability
    * expression
      * description = "Is a Hep B Adult Recommendation Available?"
      * language = #text/cql
      * expression = "Patient Hep B Immunization History should be Evaluated in Adult Series"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * dynamicValue[0]
    * path = "action.title"
    * expression
      * language = #text/cql
      * expression = "Get Recommendation Overview"
  * dynamicValue[+]
    * path = "action.description"
    * expression
      * language = #text/cql
      * expression = "Get Recommendation Detail"
  * action[+].description = "Will Follow Recommendations Provided by This Forecast"
  * action[+].description = "Will not immunize due to contraindication(s) or other medical risk factors"
  * action[+].description = "Will not immunize due to patient preferences"
  * action[+].description = "N/A - see comment (will be reviewed by medical director)"
    // TODO: How do we indicate through the response that a comment must be captured?
    // TODO: How do we communicate the response back to the CDS service for persistence?