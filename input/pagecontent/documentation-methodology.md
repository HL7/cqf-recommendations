### Knowledge Representation Formalisms

In addition to the FHIR-based L3 representation formalisms that are the focus of this implementation guide,
the BPM+ family of knowledge representation standards from Object Modeling Group (OMG) are being used to
represent clinical guideline and pathway content. This section describes potential approaches for using
the BPM+ standards in coordination with this implementation guide. Readers of this section are expected to
have some level of familiarity with the BPM+ standards, specifically BPMN, CMMN, and DMN.

Within the overall framework of levels of knowledge, the visual representation aspects of the BPM+ family of
standards fit within L2, diagrams, workflows, and process models, while the executable aspects of these
standards range into L3 and even L4, given systems that are capable of executing BPMN, CMMN, and DMN content.

TODO: Diagram depicting placement of BPMN, CMMN, DMN along-side the FHIR-based specifications

In particular, this implementation guide defines 3 layers of process-modeling structures:

1. Pathway - BPMN/CMMN (Leaning towards BPMN)
2. Strategy - BPMN/CMMN (Leaning towards CMMN)
3. Recommendation - BPMN/DMN (Leaning towards DMN)

Of course, this correspondence is a rough equivalence, there are aspects of process- and decision-modeling throughout
each of the layers, but this provides a starting point for approaching integrated use of these standards.

### BPMN and FHIR

Focusing on process semantics, this section provides mappings between BPMN and PlanDefinition, informed by the
[workflow patterns](http://workflowpatterns.com/) work done at the Eindhoven University of Technology and Queensland
University of Technology, and applied to FHIR by a joint project between the University of Applied Sciences Upper Austria ("FH Hagenberg") and CGM Clinical Austria for a prototype for medical boards (project "KIMBo").

The definition of a Process is specified using either BPMN or a FHIR PlanDefinition, then the Atlas Transformation Language (ATL)
can be used to transform between the two, using the [Control Flow and Data Flow patterns](http://workflowpatterns.com/evaluations/standard/) as a metamodel.

### Workflow Pattern Transformations

The following sections consider specific patterns and the BPMN and PlanDefinition representations of each.

<div>
  <img style="width:100%" src="transformation-process.png" alt="Business process is manually created as plan defintion. The patterns explain how an automated transformation towards BPMN and a graphical representation can be solved."/>
</div>


#### Sequence Flow

<div>
    <img src="process-pattern-sequenceFlow.png" alt="Sequence Flow"/>
</div>

**Definition**
A sequence flow is a directed arc from one source node to exactly one target node.

| BPMN | Start-Event, End-Event, Sequence |
| PlanDefinition | PlanDefinition.relatedAction, Before-Start |

**BPMN Representation**
{% highlight xml %}{% include process-patterns/bpmn-sequenceFlow.xml %}{% endhighlight %}

**PlanDefinition Representation**
{% highlight xml %}{% include process-patterns/plandefinition-sequenceFlow.xml %}{% endhighlight %}
### Parallel Split

<div>
    <img src="process-pattern-parallelSplit.png" alt="Parallel Split"/>
</div>

**Definition**
A parallel split is separating the sequence flow in parallel branches that are executed concurrently.

| BPMN | ParallelGateway |
| PlanDefinition | PlanDefinition.groupingBehavior, PlanDefinition.selectionBehavior |

**Remarks**
A merge element is created implicitly

**BPMN Representation**
{% highlight xml %}{% include process-patterns/bpmn-parallelSplit.xml %}{% endhighlight %}

**PlanDefinition Representation**
{% highlight xml %}{% include process-patterns/plandefinition-parallelSplit.xml %}{% endhighlight %}
### Exclusive Split

<div>
    <img src="process-pattern-exclusiveSplit.png" alt="Exclusive Split"/>
</div>

**Definition**
An exclusive choice is an element where the sequence flow is split into two or more branches, whereas only one of the branches can be activated with respect to a specified condition on the exclusive choice element.

**Remarks**
A synchronization element is created implicitly

| BPMN | EclusiveGateway, ExtensionElement, TaskListener |
| PlanDefinition | PlanDefinition.groupingBehavior, PlanDefinition.selectionBehavior |

**BPMN Representation**
{% highlight xml %}{% include process-patterns/bpmn-exclusiveSplit.xml %}{% endhighlight %}

**PlanDefinition Representation**
{% highlight xml %}{% include process-patterns/plandefinition-exclusiveSplit.xml %}{% endhighlight %}
### Timed Start

<div>
    <img src="process-pattern-timedStart.png" alt="Timed Start"/>
</div>

**Definition**
A TimedStartEvent is a special StartEvent that has a TimerEvent associated with it, which defines when the process has to be executed.

| BPMN | Start-Event, End-Event, Sequence |
| PlanDefinition | PlanDefinition.relatedAction, Before-Start |

**Remarks**
As PlanDefinition does not offer a specific action for either start or end, these BPMN-Elements are to be created implicitly. Whilst the start Event is based on the Elements in the first action in the list of actions in the PlanDefinition

**BPMN Representation**
{% highlight xml %}{% include process-patterns/bpmn-timedStart.xml %}{% endhighlight %}

**PlanDefinition Representation**
{% highlight xml %}{% include process-patterns/plandefinition-timedStart.xml %}{% endhighlight %}
