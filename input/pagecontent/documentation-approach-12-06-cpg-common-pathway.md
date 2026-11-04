This page connects guideline recommendations to the process of delivering care. Separate the abstract process named by the guideline from the local [Workflow](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-workflow) that assigns staff, handles user interactions and tracks completion. [Requests](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request), Tasks and [Events](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-event) convey parts of that workflow. The care setting determines how to manage them.

<a id="common-pathway----needs-some-work-conflates-settings-and-activities-only-addresses-ambulatory---"></a>

### Common Pathway

The [Common Care Pathway](common-care-pathway.html) is a proposed ambulatory process model. Its high-level activities help content authors indicate where guidance belongs, such as assessment, ordering, intervention or follow-up. It is not a complete model of every setting, distributed care arrangement or EHR workflow.

Content conforming to this implementation guide SHALL identify processes using the [Common Processes code system](CodeSystem-cpg-common-process-cs.html).

#### Use of Common Pathway in Localization

Map the abstract process to an actual local trigger and responsible actor. “Evaluate test results,” for example, does not determine whether guidance is invoked when a result arrives, when a clinician opens it or during a later review. These choices can produce different patient contexts and timing.

For each intervention, document the local setting, actor, entry point, data available at that point, action offered and follow-up responsibility. Include work outside the application, such as patient self-management, caregiver communication and between-visit review. The workflow models in [Sittig et al.](https://doi.org/10.1093/jamia/ocae138) illustrate the importance of those responsibilities without establishing that any one model improves outcomes.

### Clinical Information System (EHR) Workflow

Use the [FHIR R4 workflow patterns](https://hl7.org/fhir/R4/workflow.html) to distinguish reusable definitions, desired activities and documented occurrences:

| Concern | Resource pattern | Question answered |
|---|---|---|
| Guideline knowledge | Definition | What activity or process can be instantiated? |
| Intended care | Request | What is proposed, planned or authorized? |
| Execution/fulfillment | Task | Who is doing the work and how is execution progressing? |
| Clinical occurrence | Event | What is happening, happened or was documented as not done? |

Request status concerns the request's lifecycle; it is not a universal execution-progress field. Event status concerns that event. Every concrete resource has its own allowed codes, so use the [Activity Flow](activityflow.html#purpose-and-rationale) rather than copying a generic state machine into all resource types.

#### Using FHIR Tasks with Requests and Events

A [Task](https://hl7.org/fhir/R4/task.html) can request or track work associated with a request. Several Tasks can relate to one request, and performing work can create sub-tasks or clinical events. Keep the Task's focus, relevant links and outcome consistent with the work it represents.

For example, a proposed service request can be presented for review, accepted into a plan, authorized as an order and later fulfilled. Those are distinct transitions. A rejected proposal is not the same as an abandoned questionnaire or a procedure documented as not done. Resource-specific `status`, `intent` and reason fields preserve these distinctions; the R4 Task intent code is `option`, not “optional.”

### Workflow Enablements and Interventions (Cognitive and Decision Support)

Choose delivery to fit the decision: contextual information, a proposed action, an order set, a form, a summary or a workflow-adjacent application. CDS Hooks supplies service invocation and card/action contracts; SMART App Launch supplies application launch and authorization context. Neither standard by itself evaluates a guideline or proves that its suggestion was accepted.

The [CDS five rights](#2)—information, person, intervention format, channel and timing—are useful design questions. Confirm them with the local users rather than treating a named integration technology as a complete workflow specification.[<sup>1</sup>](#1)

Case data defined by case-feature groups or features can also support a report at the end of a pathway. This approach SHOULD be aligned with the eCaseReporting implementation guide. A report can distinguish orders from completed care, include relevant proposals and document local context, subject to the report's actual scope and recipient requirements. [Derivative assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html#cpgecasereport) explain this reuse; an internal summary is not automatically a conformant public-health report.

Continue with [integration mechanisms](documentation-approach-10-mechanisms-of-integration.html) to select an interface, and the [L4 checklist](clinical-guidelines-development-L4-checklist.html) for local implementation review.

<a id="1"></a>1. Osheroff JA. *Improving Outcomes with Clinical Decision Support: An Implementer's Guide.* HIMSS; 2012.

<a id="2"></a>2. Campbell RJ. The five rights of clinical decision support: CDS tools helpful for meeting meaningful use. *J AHIMA.* 2013;84(10):42–47.
