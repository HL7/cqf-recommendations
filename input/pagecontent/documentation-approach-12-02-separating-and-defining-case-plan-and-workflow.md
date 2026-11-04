Use the following distinctions when one fact participates in several parts of a guideline. A medication order, for example, can be a planned intervention and an input to another recommendation. Its role changes; its meaning as an order does not.

<a id="casedocumentation-approach-12-04-cpg-casehtml----link-to-1204---"></a>

### Case

The [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) is the patient information relevant to the guideline, including recorded facts, clinical assessments and derived [Case Features](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature). The [case page](documentation-approach-12-04-cpg-case.html) explains their definitions and instances. The exact [CPGCase profile](StructureDefinition-cpg-case.html) has a narrower role: it profiles EpisodeOfCare to record a patient's enrollment in a pathway.

<a id="plan----link-to-1203---"></a>

### Plan

The [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan) describes recommended care for patients in scope. [Recommendation, strategy and pathway definitions](documentation-approach-12-03-cpg-plan.html) represent it using PlanDefinition profiles. Reusable knowledge can refer to patient data without becoming patient-specific data itself.

#### Plan, Planning, and Care Plan

“Plan” can mean a definition, a patient-specific [Care Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-care-plan) or the `plan` intent of a [Request](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-request). Qualify the word when the distinction matters:

| Meaning | Concrete representation | What it does not establish |
|---|---|---|
| Guideline definition | PlanDefinition and ActivityDefinition | A patient decision or authorization |
| Patient care plan | CPGCarePlan, a CarePlan profile | That all listed activities occurred |
| Planned activity | Request with the applicable `plan` intent | An authorized order |
| Group of proposed choices | CPGStrategy, a RequestGroup profile | Selection or completion of every option |

See [patient-specific care planning](documentation-approach-12-05-cpg-careplan.html) for the transition from definitions to requests.

### Workflow

[Workflow](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-workflow) describes the actors, timing, dependencies and interactions through which care is delivered. A guideline can express abstract relationships while the local site supplies concrete triggers, routing and user interfaces. Requests and events carry useful workflow information, but no single resource represents every aspect of local work. [Tasks](https://hl7.org/fhir/R4/task.html) can track execution and fulfillment.

### Boundary Issues at the Separation of Domain Concerns

A resource may serve several concerns without being copied into separate competing records. Keep its source, patient, time and lifecycle state intact, and use the references appropriate to the resource type.

#### Examples of Boundary Issues in the CPG

| Boundary case | Model it as | Interpretation to preserve |
|---|---|---|
| An existing order affects another recommendation | A request used as a case feature | The order expresses intent, not an observed exposure |
| A completed administration fulfills an order | An event linked to its request | The administration is a clinical fact and may inform later logic |
| A recommendation is declined | The proposal and the relevant decision/Task state | Declining a proposal is different from documenting an event as not performed |
| A clinician assessment informs patient description and care planning | A ClinicalImpression referenced where relevant | The assessment and its provenance carry across both uses |
| A calculated score is shown to a clinician | A derived feature with its sources | The calculation is not the clinician's independent assessment |
| A metric evaluates care against a proposal | A separately defined indicator | “Not documented” is not automatically “not done” or inappropriate care |
| Several guidelines affect the same patient | Linked definitions and a coordinated care plan | This guide does not automatically reconcile conflicting recommendations |

When deriving a summary, state whether it shows proposals, authorized requests, fulfilled activities or all three. When evaluating a recommendation, specify which states count as evidence and how incomplete data affects the result. The [activity lifecycle](activityflow.html) and [derivative assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html) provide the detailed contracts.
