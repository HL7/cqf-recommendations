---
layout: example-default
title: Opioid Prescribing Guideline Example
---

This example illustrates the use of FHIR resources to represent computable content for Recommendation 5 of the CDC Opioid Prescribing Guideline:

[CDC Opioid Prescribing Guideline](https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm)

The examples in this section were funded by The Office of the National Coordinator for Health Information Technology (ONC), contract numbers HHSP233201800320G, HHSP233201700044C, and D15PD00739

# Recommendation 5: Lowest Effective Dose
When opioids are started, providers should prescribe the lowest effective dosage. Providers should use caution when prescribing opioids at any dosage, should carefully reassess evidence of individual benefits and risks when considering increasing dosage to ≥50 morphine milligram equivalents (MME)/day, and should avoid increasing dosage to ≥90 MME/day or carefully justify a decision to titrate dosage to >90 MME/day

**(recommendation category: A, evidence type: 3)**.

## Functional Description

<ul>
  <li>When</li>
    <ul>
      <li>Provider is prescribing an opioid analgesic with ambulatory misuse potential in the outpatient setting</li>
      <li>Prescription is for treating chronic pain.</li>
      <li>Opioid review is useful for this patient:</li>
        <ul>
          <li>Patient is 18 or over</li>
          <li>Patient does not have findings indicating limited life expectancy</li>
          <li>Patient does not have orders for therapies indicating end of life care</li>
          <li>Patient is not undergoing active cancer treatment:</li>
            <ul>
              <li>Patient has had at least 2 encounters within the past year with any diagnosis of cancer</li>
            </ul>
        </ul>
      <li>Patient projected Morphine Milligram Equivalent (MME) ≥50</li>
    </ul>
  <li>Then</li>
    <ul>
      <li>Recommend prescribing the lowest effective dosage[, and avoid increasing dosage to ≥90 MME]:</li>
      <ul>
        <li>Will prescribe a lower dosage</li>
        <li>Benefits outweigh risks, snooze 3 months</li>
        <li>Active pain, snooze 1 month</li>
        <li>N/A - see comment, snooze 3 months</li>
      </ul>
    </ul>
</ul>

For both recommendations, provide the information used to calculate the MME as a table of results to provide the clinician with sufficient information to understand how the equivalence was calculated, as well as the source of the data used in the calculation.

In addition, provide links to the CDC Guidance, as well as the MME conversion table.

For both recommendations, one of the following responses should be required:

* Will reduce dosage
* Risk of overdose carefully considered and outweighed by benefit; snooze 3 months.
* Acute pain; snooze 1 month.
* N/A-see comment (will be reviewed by medical director); snooze 3 months.

<div>
  <img src="../../assets/images/Recommendation05-Flow.png"/>
</div>

## Resources

### CQL Libraries
* [OMTKLogic](OMTKLogic.html)
* [OpioidCDS_R4_Common](OpioidCDSR4Common.html)
* [OpioidCDS_R4_Recommendation_05](OpioidCDSR4Recommendation05.html)

### Library Resources
* [OMTKLogic](../../Library-omtklogic.html)
* [OpioidCDSR4Common](../../Library-OpioidCDSR4Common.html)
* [OpioidCDSR4Recommendation05](../../Library-OpioidCDSR4Recommendation05.html)

### PlanDefinition Resources
* [opioidcds-r4-recommendation-05](../../PlanDefinition-opioidcds-r4-recommendation-05.html)
