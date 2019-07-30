---
layout: example-default
title: Opioid Prescribing Guideline Example
---

This example illustrates the use of FHIR resources to represent computable content for Recommendation 5 of the CDC Opioid Prescribing Guideline:

[CDC Opioid Prescribing Guideline](https://www.cdc.gov/mmwr/volumes/65/rr/rr6501e1.htm)

# Recommendation 5: Lowest Effective Dose
When opioids are started, providers should prescribe the lowest effective dosage. Providers should use caution when prescribing opioids at any dosage, should carefully reassess evidence of individual benefits and risks when considering increasing dosage to ≥50 morphine milligram equivalents (MME)/day, and should avoid increasing dosage to ≥90 MME/day or carefully justify a decision to titrate dosage to >90 MME/day

**(recommendation category: A, evidence type: 3)**.

## Functional Description

**Patient has been prescribed opioids for chronic pain**

**Patient has been prescribed opioids with ambulatory abuse potential that cover 80 days or more in the previous 90 days**

To be generalizable to areas where dispense information is not available, base the calculation on prescriptions, and assume all prescribed medications were taken, including for PRN (as needed) medications. Assume PRN medications are taken at the maximum frequency.

**Patient does not appear to be at end of life.**

**Calculate the morphine milligram equivalence (MME) for the opioid being prescribed plus any other active opioid prescriptions.**

**if MME >= 50 and < 90, provide a recommendation to taper:**

**High risk for opioid overdose - consider tapering.**

Total morphine milligram equivalent (MME) is 60 mg/day. Consider tapering to < 50.

**if MME >= 90, provide a recommendation to taper now:**

**High risk for opioid overdose - taper now.**

Total morphine milligram equivalent (MME) is 100 mg/day. Taper now to < 50.

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
* [OMTKLogic](cql/OMTKLogic-0.0.0.cql)
* [OpioidCDS_R4_Common](cql/OpioidCDS_R4_Common-0.1.0.cql)
* [OpioidCDS_R4_Recommendation_05](cql/OpioidCDS_R4_Recommendation_05-0.1.0.cql)

### Library Resources
* [omtklogic](../../Library-omtklogic-0-0-1.html)
* [opioidcds-r4-common](../../Library-opioidcds-r4-common.html)
* [opioidcds-r4-recommendation-05](../../Library-opioidcds-r4-recommendation-05.html)

### PlanDefinition Resources
* [opioidcds-r4-recommendation-05](../../PlanDefinition-opioidcds-r4-recommendation-05.html)

