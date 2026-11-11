### Knowledge Representation Formalisms

BPM+ provides optional ways to model decisions and processes alongside FHIR/CQL. BPMN describes process flow, DMN describes decisions, and CMMN describes case-management behavior. A diagram can support L2 clinical review; an executable model may support L3/L4 processing only in an environment implementing its semantics.

Use this reference when an authoring project already uses these formalisms or needs to compare a model with FHIR/CQL artifacts. The [Represent](methodology-represent.html) and [Translate](methodology-translate.html) steps describe the shared work regardless of the modeling tool.

**Patterns on this page:** [Sequence](#sequence-flow) · [Parallel split](#parallel-split) · [Exclusive split](#exclusive-split) · [Timed start](#timed-start).

These correspondences are useful starting points, not equivalence guarantees:

| Clinical modeling concern | Possible BPM+ model | FHIR/CQL target to consider |
| --- | --- | --- |
| Recommendation decision | DMN | CQL expressions with CPGRecommendationDefinition conditions/actions |
| Strategy/case coordination | CMMN or BPMN | CPGStrategyDefinition, related actions, and supported execution behavior |
| Pathway/process organization | BPMN or CMMN | CPGPathwayDefinition and referenced definitions |
{:.grid}

The target definition profiles are PlanDefinition profiles. A patient-specific CPGStrategy is a RequestGroup, and a clinical case is not automatically a CMMN execution instance. Use [CPG plans](approach-model.html#plan) and [activity flow](activityflow.html) for the formal resource distinctions.

### BPMN and FHIR

The examples below come from exploratory workflow-pattern mapping work by FH Hagenberg and CGM Clinical Austria's KIMBo prototype, informed by the [Workflow Patterns initiative](http://workflowpatterns.com/). They illustrate selected constructs rather than a normative bidirectional mapping or a complete executable clinical implementation.

### Workflow Pattern Transformations

The retained prototype illustrates a transformation from a PlanDefinition into a BPMN model and graphical representation. The paired patterns below help reviewers inspect which relationships each representation expresses.

<div style="clear: both;">
  <img src="cpg-method-formalisms.svg" alt="A historical transformation starts with PlanDefinition and produces a BPMN representation for review. Paired sequence, parallel split, exclusive split, and timed start patterns show the relationships to inspect." class="img-responsive center-block" width="1000"/>
</div>


Review condition languages, data retrieval, null/unknown behavior, timing, concurrency, joins, and local task execution. Compare source and target behavior using the same approved cases. Do not infer runtime scheduling or synchronization guarantees from a visually similar graph. The retained XML snippets are historical pattern examples, including placeholder expressions; they are not a production-ready CQL translation.

#### Sequence Flow

A sequence connects a source action to a following action. The FHIR example uses `PlanDefinition.action.relatedAction` with `relationship=before-start`. This encodes a relationship; the consuming implementation still needs appropriate execution support.

**BPMN example**

{% highlight xml %}{% include process-patterns/bpmn-sequenceFlow.xml %}{% endhighlight %}

**PlanDefinition example**

{% highlight xml %}{% include process-patterns/plandefinition-sequenceFlow.xml %}{% endhighlight %}

### Parallel Split

Parallel branches can be represented as grouped child actions. The retained example uses `action.groupingBehavior=logical-group` and `action.selectionBehavior=all`, with related actions. Selection of all actions does not by itself define a runtime join, transaction, or concurrent execution policy.

**BPMN example**

{% highlight xml %}{% include process-patterns/bpmn-parallelSplit.xml %}{% endhighlight %}

**PlanDefinition example**

{% highlight xml %}{% include process-patterns/plandefinition-parallelSplit.xml %}{% endhighlight %}

### Exclusive Split

An exclusive choice selects one branch according to conditions. The example uses `action.selectionBehavior=exactly-one` with child applicability conditions. Verify mutually exclusive and complete cases, including unknown inputs and no matching branch; implicit synchronization in a transformation tool is not a general FHIR guarantee.

**BPMN example**

{% highlight xml %}{% include process-patterns/bpmn-exclusiveSplit.xml %}{% endhighlight %}

**PlanDefinition example**

{% highlight xml %}{% include process-patterns/plandefinition-exclusiveSplit.xml %}{% endhighlight %}

### Timed Start

A timed start adds a scheduling condition. The retained FHIR example uses `action.trigger` with `type=periodic` and `timingTiming`, plus related-action sequencing. A related-action relationship alone does not establish a timer. The target environment determines how scheduling is supported.

**BPMN example**

{% highlight xml %}{% include process-patterns/bpmn-timedStart.xml %}{% endhighlight %}

**PlanDefinition example**

{% highlight xml %}{% include process-patterns/plandefinition-timedStart.xml %}{% endhighlight %}

For a historical use of DMN/CMMN during knowledge engineering, see the [COVID-19 case study](methodology-case-study.html). Validate any transformation through the [execution and validation tracks](approach-development.html#validation).

{% include chapter-navigation.html section="Methodology" overview="methodology.html" %}
