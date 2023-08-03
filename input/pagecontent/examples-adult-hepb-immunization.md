### Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age

This example describes a subset of the Hepatitis B (Hep B) immunization schedule for adults who are 18 years or older and have not yet been vaccinated for Hep B. It is provided for demonstration purposes and not intended to be a complete representation of all of the Hep B immunization schedule logic.

By the age of 18, many patients will have already received their entire Hep B series of shots during early childhood. The logic described here applies to patients >= 18 years of age who are unvaccinated and at risk for HBV infection, or are requesting protection from HBV infection. More information about Hepatitis B vaccination recommendations for adults can be found in the [CDC MMWR Vol.67 / No.1 : Prevention of Hepatitis B Virus Infection in the United States: Recommendations of the Advisory Committee on Immunization Practices](http://www.cdc.gov/mmwr/volumes/67/rr/pdfs/rr6701-H.PDF) and, for adjuvant vaccine, in the [April 2018 Recommendations for the use of adjuvanted hepatitis B vaccine (Heplisav-B, Dynavax)](http://www.cdc.gov/mmwr/volumes/67/wr/pdfs/mm6715a5-H.pdf). In addition, the Immunization Action Coalition has [a good overview](http://www.immunize.org/askexperts/experts_hepb.asp#adult).

The logic described here assumes the following parameters:

* The patient is >= 18 years.
* The patient has not yet received any other Hep B vaccines.
* The patient is indicated to receive a Hep B vaccine and there are no contraindicating factors (_e.g._ - contraindications based on the patient's medical history)
* Only the Hep B, adjuvanted product (CVX 189) is administered to the patient. This vaccine is represented by the CodeableConcept `{ "coding" : [ { "system" : "http://hl7.org/fhir/sid/cvx", "code" : "189" } ] }` in the http://hl7.org/fhir/ValueSet/vaccine-code Value Set. If a different Hep B vaccine other than the Hep B adjuvanted product is administered or preferred, other logic not represented in this example applies.

#### Hep B 2-Dose Adult Series Example Logic

For adults >= 18 years of age who have not received any prior doses of Hep B and is indicated to receive a Hep B shot, the Hep B adjuvanted vaccine (CVX 189) may be administered according to this logic as follows.

1. The series is complete after 2 doses.
2. For purposes of this example, only the Hep B adjuvanted vaccine (CVX 189) is administered. (To support other Hep B vaccines, additional logic is necessary.)

For the first dose:
* The absolute minimum age that the vaccine may be administered is 18 years - 4 days.
* The recommended age that the vaccine be administered is 18 years.

For the second dose:
* The second dose must be administered at least 24 days after the most recent Hep B adjuvanted shot.
* The second dose is recommended to be administered 28 days after the most recent Hep B adjuvanted (CVX 189) shot.

#### Artifacts

* [Library](Library-HepBAdultForecasting.html)
* [PlanDefinition](PlanDefinition-HepBAdultForecastingPD.html)
