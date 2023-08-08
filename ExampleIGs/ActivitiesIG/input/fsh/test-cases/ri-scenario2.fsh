Instance: ri-scenario2
InstanceOf: ImmunizationRecommendation
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-recommendimmunization-ad)
* patient = Reference(ri-scenario2-patient)
* date = "2020-12-22"
* recommendation
  * vaccineCode = $sct#14745005 "Hepatitis A vaccine"
  * forecastStatus = $immunization-recommendation-status#due "Due"