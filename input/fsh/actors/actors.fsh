Instance: cpg-knowledge-repository
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Knowledge Repository"
Description: "A system that stores and distributes the knowledge artifacts that make up a computable guideline, such as plan definitions, activity definitions, libraries, value sets, and case feature definitions."
* insert ActorDefinitionMetadata(cpg-knowledge-repository)
* name = "CPGKnowledgeRepository"
* type = #system
* documentation = """
A CPG Knowledge Repository is a [CRMI Artifact Repository](http://hl7.org/fhir/uv/crmi/artifact-repository-service.html) that makes the knowledge artifacts of a computable guideline available to CPG Services, CPG Clients, and other repositories. It supports at least searching and retrieving artifacts, and may support packaging and authoring.

A CPG Knowledge Repository SHOULD conform to the [CRMI Shareable Artifact Repository](http://hl7.org/fhir/uv/crmi/CapabilityStatement/crmi-shareable-artifact-repository) capability statement, and MAY conform to the CRMI Publishable or Authoring Artifact Repository capability statements.
"""
* capabilities = "http://hl7.org/fhir/uv/crmi/CapabilityStatement/crmi-shareable-artifact-repository"

Instance: cpg-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Service"
Description: "A system that evaluates the knowledge artifacts of a computable guideline against patient data to produce patient-specific guidance, such as recommendations, proposals, case summaries, and care plans."
* insert ActorDefinitionMetadata(cpg-service)
* name = "CPGService"
* type = #system
* documentation = """
A CPG Service obtains the knowledge artifacts of a computable guideline, typically from a CPG Knowledge Repository, and evaluates them in the context of a particular patient, encounter, or population. Depending on the level of enablement it supports, it may return contextualized narrative, patient summaries, recommendations and proposals (for example, using [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html)), questionnaires for missing data, or care plans and metrics.

A CPG Service always works with a CPG Client. The specific interactions depend on the level of enablement, as described on the [Actors](actors.html) page.
"""

Instance: cpg-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Client"
Description: "A system, such as an EHR or a clinical application, that requests guidance from a CPG Service, presents that guidance to users, and records the resulting activities."
* insert ActorDefinitionMetadata(cpg-client)
* name = "CPGClient"
* type = #system
* documentation = """
A CPG Client provides the patient context and data a CPG Service needs, presents the resulting guidance to users at the appropriate point in the workflow, and records the decisions and activities that follow from it (for example, accepting or rejecting a proposal, or recording the event that fulfills it).

A CPG Client always works with a CPG Service. A system that imports and executes guideline content natively, such as an EHR that implements the logic of a computable guideline directly, acts as both a CPG Client and a CPG Service. The specific interactions depend on the level of enablement, as described on the [Actors](actors.html) page.
"""
