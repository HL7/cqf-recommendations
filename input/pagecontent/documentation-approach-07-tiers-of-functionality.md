The three functional tiers separate **data**, **clinical logic** and **forms**. They identify responsibilities, not deployment servers, maturity grades or required product components. Each can have representations at [L1 through L4](documentation-approach-06-01-levels-of-knowledge-representation.html).

<div style="clear: both;">
  <img src="cpg-model-tiers.svg" alt="Data definitions describe the information, clinical logic interprets it, and forms collect or display it while reusing the clinical meaning" class="img-responsive" width="1000"/>
</div>

*Functional responsibilities. Original illustration; forms are one possible interaction mechanism, not a prerequisite for every guideline implementation.*

### Data Elements

Define the clinical information the guideline uses: meaning, structure, codes, units, time and allowable values. FHIR StructureDefinition, CodeSystem and ValueSet resources express important parts of this contract. Patient-specific resources carry the actual observations, conditions, requests and other facts.

Keep data transformation separate from clinical inference. Converting a local code to its agreed standard representation should preserve its meaning; deriving a risk score or assessed clinical state adds clinical logic. A mapping with incomplete semantic alignment needs a documented limitation and clinical review, not a claim of equivalence based on similar labels.

### Clinical Logic

Describe patient state and proposed care using those data definitions. Libraries can contain descriptive calculations, inclusion/exclusion criteria and clinical decision expressions; PlanDefinition and ActivityDefinition relate conditions to activities, and Measure describes measurement structure. These resources collaborate rather than belonging exclusively to one software layer.

Separate patient descriptive logic from the decision to propose care. For example, a calculation produces a named patient feature; a recommendation uses that feature, other applicable conditions and an action definition. This keeps calculations reusable across recommendations, summaries and measures.

CQL and associated Libraries do not define the complete clinical workflow or user experience. Local invocation, data access, authorization and handling of the proposed result remain implementation responsibilities.

### Forms Description

Describe what information users enter, confirm or see, and how the interaction behaves. Questionnaire represents form structure; expressions and relevant PlanDefinitions can support population, branching or orchestration. The formal description does not prescribe a particular widget, page design or EHR presentation.

Forms logic can decide whether a question is visible or which item is next. It should reuse the clinical definition of a feature and the recommendation's decision logic rather than hide those rules inside a user-interface implementation. [Interactive CDS](interactive-cds.html) describes how generation, population, extraction and re-evaluation can work together.

### Check the separation with one recommendation

| Question | Responsibility |
|---|---|
| What information identifies the patient's relevant state? | Data definition, including source and time |
| What is inferred, and when does the recommendation apply? | Clinical logic |
| Which activity should be proposed? | Clinical logic and activity definition |
| Which missing value should the user enter or confirm? | Form behavior using the shared definitions |
| Who can authorize and carry out the activity? | Local workflow and permissions |

Use the [levels-by-tiers matrix](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html) to plan work products. See [separation of concerns](documentation-approach-12-01-separations-of-concerns-in-the-cpg.html) for the complementary Case/Plan/Workflow boundaries.
