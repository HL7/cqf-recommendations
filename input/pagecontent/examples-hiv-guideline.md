This historical example illustrates how screening recommendations can be decomposed into data requirements, decisions, and follow-up activities. Its source material is the CDC's **2006** testing recommendations and the USPSTF's **2019** screening recommendation. It is not a maintained clinical screening protocol; select and review the intended clinical source and version before implementation.

| Source | Role in the original example |
| --- | --- |
| [CDC: Revised Recommendations for HIV Testing of Adults, Adolescents, and Pregnant Women in Health-Care Settings (2006)](https://www.cdc.gov/mmwr/preview/mmwrhtml/rr5514a1.htm) | Routine testing, risk-related repeat testing, pregnancy, and the testing interaction |
| [USPSTF: HIV Infection Screening (2019)](https://www.uspreventiveservicestaskforce.org/uspstf/recommendation/human-immunodeficiency-virus-hiv-infection-screening) | Screening populations and evidence supporting the recommendation |
| [USPSTF recommendation statement in JAMA (2019)](https://doi.org/10.1001/jama.2019.6587) | Published recommendation and its supporting rationale |
{:.grid}

The sources have different population and implementation details. Keep them identifiable rather than blending their criteria into an unattributed rule. This page explains the modeling work; the linked publications supply the clinical details.

### Factors Conferring "High Risk" Category Membership

Represent the risk factors relevant to the selected recommendation as explicit case features, with their source definitions and time context. The original example considered exposure history, injection drug use, sexual exposure, sexually transmitted infections, and related clinical history. Review sensitive data collection and availability with the clinical team. Missing documentation is not evidence that a risk factor is absent.

### Indication for immediate screening

Keep an exposure-related assessment distinct from routine screening and repeat-screening logic. Identify the source recommendation, trigger, required patient information, and action for each scenario. If the source does not resolve a decision, record the ambiguity for clinical review.

### Screening in pregnancy

Pregnancy, the point in prenatal care or labor, prior testing, and relevant risk information can change the decision context. Model those inputs explicitly and keep source-specific conditions visible. Use [interactive CDS](interactive-cds.html) when information needed for a recommendation is missing or needs confirmation.

#### Consent

Model the information offered to the patient, the applicable consent or opt-out workflow, and documentation of the patient's decision. A screening proposal, a declined offer, and a completed test are distinct records. Language, literacy, and the available communication channel affect the local interaction.

#### Testing

Represent the requested test separately from its result and any supplemental testing. A reactive screening result, a confirmed result, an indeterminate result, and unavailable data have different meanings. Use the selected source's diagnostic sequence and locally available testing workflow; do not infer the next action from a generic positive/negative flag alone.

### Rescreening

Repeat-screening logic needs prior test dates, relevant results, the current clinical context, and the interval specified by the chosen recommendation. Include boundary dates and unavailable prior results in the test cases. A recurring recommendation also needs duplicate-proposal and existing-order handling.

<a id="exceptions-to-screening-2006-guideline-only"></a>
### Exceptions to screening

The original example included a population-prevalence exception attributed specifically to the 2006 CDC source. Any retained exception belongs to that source and version. Review its applicability separately when selecting content for implementation.

### HIV Screening Protocol

{% include cpg-diagram.html src="cpg-runtime-screening-example.svg" alt="For the historical screening example, select the recommendation version, establish eligibility and context, offer and authorize testing, interpret results using the selected source, and arrange follow-up." %}

*Figure 1. Information and action boundaries to represent in the historical screening example. This is a modeling overview, not a diagnostic algorithm.*

| Work product | Questions for review |
| --- | --- |
| Case features | Are population, risk, pregnancy, prior testing, and current results represented with clear meaning and time context? |
| Applicability logic | Are inclusion criteria, exceptions, missing data, and intervals explicit and source-linked? |
| Activity definitions | Are the offered test, authorized request, result interpretation, counseling, and referral represented as distinct activities? |
| Test scenarios | Do cases cover source-specific boundaries, declined testing, uncertain results, repeat testing, and existing requests? |
{:.grid}

Continue to [methodology](methodology.html) for the translation steps and [activity examples](examples-activities.html) for the definition/request/event pattern. Use the supplied artifacts to study representation, then review and validate the selected clinical content for local use.
