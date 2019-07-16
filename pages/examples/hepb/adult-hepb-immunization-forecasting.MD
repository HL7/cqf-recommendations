# Immunization Forecasting for Hepatitis B for Adults >= 18 Years of Age

## Overview

This example describes the logic of the Hepatitis B (Hep B) immunization schedule for adults who are 18 years or older and have not yet been vaccinated for Hep B. It is provided for demonstration purposes and not intended to be a complete representation of all of the Hep B immunization schedule logic. 

By the age of 18, most patients will have already received their entire Hep B series of shots during early childhood. The logic described here applies to patients >= 18 years of age who are unvaccinated and at risk for HBV infection, or are requesting protection from HBV infection. More information about Hep B recommendations for adaults can be found in the [CDC MMWR Vol.67 / No.1 : Prevention of Hepatitis B Virus Infection in the United States: Recommendations of the Advisory Committee on Immunization Practices](http://www.cdc.gov/mmwr/volumes/67/rr/pdfs/rr6701-H.PDF) as well as in the [April 2018 Recommendations for the use of adjuvanted hepatitis B vaccine (Heplisav-B, Dynavax)](www.cdc.gov/mmwr/volumes/67/wr/pdfs/mm6715a5-H.pdf). In addition, the Immunization Action Coalition has [a good overview](http://www.immunize.org/askexperts/experts_hepb.asp#adult) as well.

The logic described here assumes the following parameters:

1. The patient is >= 18 years.
2. The patient has not yet received any other Hep B vaccines.
3. The patient is indicated to receive a Hep B vaccine and there are no contraindicating factors (_e.g._ - contraindications based on the patient's medical history) 
4. Only the Hep B, adjuvanted product (CVX 189) is administered to the patient. This vaccine is represented by the CodeableConcept `{ "coding" : [ { "system" : "http://hl7.org/fhir/sid/cvx", "code" : "189" } ] }` in the http://hl7.org/fhir/ValueSet/vaccine-code Value Set. If a different Hep B vaccine other than the Hep B adjuvanted product is administered or preferred, other logic not represented in this example applies.

## Hep B 2-Dose Adult Series Example Logic

For adults >= 18 years of age who have not received any prior doses of Hep B and is indicated to receive a Hep B shot, the Hep B adjuvanted vaccine (CVX 189) may be administered according to the "Hep B 2-Dose Adult Series" logic as follows.

1. The Hep B 2-Dose Adult Series is complete after 2 doses.
2. Only the Hep B adjuvanted vaccine (CVX 189) may be administered. (Other vaccines require a different set of logic.)

For the first dose:
* The absolute minimum age that the vaccine may be administered is 18 years - 4 days.
* The recommended age that the vaccine be administered is 18 years.

For the second dose:
* The second dose must be administered at least 24 days after the most recent adjuvanted Hep B shot.
* The second dose is recommended to be administered 28 days after the most recent Hep B adjuvanted (CVX 189) shot.

