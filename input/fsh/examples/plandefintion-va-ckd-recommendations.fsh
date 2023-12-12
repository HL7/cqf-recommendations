Instance: va-ckd-recommendations
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CKD VA Recommendations Plan Definition"
* insert ExamplePlanDefinitionMetadata(va-ckd-recommendations)
* identifier
  * use = #official
  * value = "VA_CKD_Recommendations"
* name = "VACKDRecommendations"
* description = "VA CKD Recommendations"
* type = $plan-definition-type#eca-rule "ECA Rule"
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#709044004 "Chronic kidney disease (disorder)"
* topic = $definition-topic-cs#treatment "Treatment"
* action
  * id = "001"
  * extension[+]
    * url = Canonical(cpg-directionOfRecommendation)
    * valueCodeableConcept = $cpg-recommendation-direction-cs#for "For"
  * title = "CKD Protein Diet"
  * description = "In patients with stage 3 and 4 CKD, we suggest a protein diet of 0.6 to 0.8 g/kg/day as it may slow the decline in glomerular filtration rate (GFR) and progression to end-stage renal disease (ESRD)."
  * documentation
    * extension[+]
      * url = Canonical(cqf-strengthOfRecommendation)
      * valueCodeableConcept = $recommendation-strength#weak "Weak"
    * type = #documentation
    * display = "VA/DoD Clinical Practice Guideline for The management of Chronic Kidney Disease in Primary care"
    * url = $va-clinical-practice-guidelines
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Has CKD stage 3 or 4"