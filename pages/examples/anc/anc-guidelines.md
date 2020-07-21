---
layout: example-default
title: Antenatal Care Guideline Example
---

This example defines computable content for two recommendations in the WHO Antenatal Care Guildines (ANC):

[WHO ANC Guideline](https://www.who.int/reproductivehealth/publications/maternal_perinatal_health/anc-positive-pregnancy-experience/en/)

Overall, the guideline recommends a contact schedule consisting of 8 contacts at specific points in the pregnancy. This is represented with the [ANC Contact Schedule](../../PlanDefinition-anc-contact-schedule.html) (a [clinical protocol](../../StructureDefinition-cpg-protocoldefinition.html)) describing the expected schedule:

<pre><code>
ANC Contact 1: up to 12 weeks
ANC Contact 2: 20 weeks
ANC Contact 3: 26 weeks
ANC Contact 4: 30 weeks
ANC Contact 5: 34 weeks
ANC Contact 6: 36 weeks
ANC Contact 7: 38 weeks
ANC Contact 8: 40 weeks
ANC Delivery: 41+ weeks
</code></pre>

The protocol contains actions for each expected contact with an applicability condition to specify the timing, and pointing to the [ANC Contact](../../PlanDefinition-anc-contact.html) (a [workflow definition](../../StructureDefinition-cpg-workflowdefinition.html)) describing each contact:

<pre><code>
Registration: PlanDefinition/cpg-common-registration
Record health history:
  if "Is First Contact"
	  New profile: Questionnaire/anc-first-contact
	Questionnaire/anc-every-contact
Assess danger signs:
  Questionnaire/anc-quick-check
Assess current pregnancy:
Case management or referral:
Schedule followup visit
</code></pre>

These definitions reference the [ANC Common Library](../../Library-anc-common.html) to provide the logic for the applicability conditions.

Within the context of this overall schedule, the guideline contains specific recommendations related to various aspects of the health of the mother. One of these is recommendation A2, for Iron and Folic Acid Supplementation, detailed in the following sections as part of this example.

# Iron and Folic Acid Supplementation

## Recommendation A2.1

Daily oral iron and folic acid supplementation with 30 mg
to 60 mg of elemental iron2 and 400 μg (0.4 mg) of folic acid3 is
recommended for pregnant women to prevent maternal anaemia,
puerperal sepsis, low birth weight, and preterm birth.

## Recommendation A2.2

Intermittent oral iron and folic acid supplementation with 120 mg
of elemental iron5 and 2800 μg (2.8 mg) of folic acid once weekly is
recommended for pregnant women to improve maternal and neonatal
outcomes if daily iron is not acceptable due to side-effects, and in
populations with an anaemia prevalence among pregnant women of
less than 20%.

# Resources

These recommendations use the [ANCRecommendationA2](../../Library-anc-recommendation-a2.html) library to define the logic involved, and the [ANCRecommendationA2](../../PlanDefinition-anc-recommendation-a2.html) recommendation definition to establish the event-condition-action rule for when they should be used.
