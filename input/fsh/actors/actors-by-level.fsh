// Actors that refine the CPG Service and CPG Client by level of enablement. See the Actors page.
Instance: cpg-narrative-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Narrative Service"
Description: "A CPG Service that returns the guideline narrative relevant to a clinical context (Contextualized Narrative, delivered in context)."
* insert ActorDefinitionMetadata(cpg-narrative-service)
* name = "CPGNarrativeService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-narrative-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-narrative-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Narrative Client"
Description: "A CPG Client that requests guideline narrative at points in the workflow and displays it (Contextualized Narrative, delivered in context)."
* insert ActorDefinitionMetadata(cpg-narrative-client)
* name = "CPGNarrativeClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-narrative-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-summary-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Summary Service"
Description: "A CPG Service that produces a summary of the patient's case features relevant to a guideline (Contextualized Narrative with Patient-level Information)."
* insert ActorDefinitionMetadata(cpg-summary-service)
* name = "CPGSummaryService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-summary-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-summary-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Summary Client"
Description: "A CPG Client that requests and displays the patient's case summary alongside the guideline narrative (Contextualized Narrative with Patient-level Information)."
* insert ActorDefinitionMetadata(cpg-summary-client)
* name = "CPGSummaryClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-summary-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-recommendation-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Recommendation Service"
Description: "A CPG Service that evaluates recommendation definitions and returns patient-specific proposals (Actionable Intervention)."
* insert ActorDefinitionMetadata(cpg-recommendation-service)
* name = "CPGRecommendationService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-recommendation-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-recommendation-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Recommendation Client"
Description: "A CPG Client that presents proposals, records whether they are accepted or rejected, and records the resulting requests and events (Actionable Intervention)."
* insert ActorDefinitionMetadata(cpg-recommendation-client)
* name = "CPGRecommendationClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-recommendation-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-interactive-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Interactive Service"
Description: "A CPG Service that generates questionnaires for missing case features and re-evaluates recommendations as data is captured (Actionable Summary View)."
* insert ActorDefinitionMetadata(cpg-interactive-service)
* name = "CPGInteractiveService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-interactive-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-interactive-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Interactive Client"
Description: "A CPG Client that renders and completes questionnaires and presents the resulting case plan summary (Actionable Summary View)."
* insert ActorDefinitionMetadata(cpg-interactive-client)
* name = "CPGInteractiveClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-interactive-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-importing-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Importing Client"
Description: "A system, typically an EHR, that retrieves a package of a guideline's content and implements the subset of features it supports natively, acting as both CPG Client and CPG Service (EHR Import of CPG)."
* insert ActorDefinitionMetadata(cpg-importing-client)
* name = "CPGImportingClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-importing-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-pathway-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Pathway Service"
Description: "A CPG Service that manages pathway enrollment, strategies, and the patient's care plan over time (Deep EHR Integration with CDS Service)."
* insert ActorDefinitionMetadata(cpg-pathway-service)
* name = "CPGPathwayService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-pathway-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-pathway-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Pathway Client"
Description: "A CPG Client that maintains the care plan, records activities as they progress, and reports events back to the service (Deep EHR Integration with CDS Service)."
* insert ActorDefinitionMetadata(cpg-pathway-client)
* name = "CPGPathwayClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-pathway-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-metric-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Metric Service"
Description: "A CPG Service that evaluates computable metrics for a patient or population (derived capability: Metrics)."
* insert ActorDefinitionMetadata(cpg-metric-service)
* name = "CPGMetricService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-metric-service"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-metric-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Metric Client"
Description: "A CPG Client that requests and displays metric results, or submits them for reporting (derived capability: Metrics)."
* insert ActorDefinitionMetadata(cpg-metric-client)
* name = "CPGMetricClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* capabilities = "http://hl7.org/fhir/uv/cpg/CapabilityStatement/cpg-metric-client"
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"

Instance: cpg-casereporting-service
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Case Reporting Service"
Description: "A CPG Service that produces a case report from the patient's case features and pathway (derived capability: Case Reporting). Case reporting is expected to align with the Electronic Case Reporting implementation guide, so no capability statement is defined here."
* insert ActorDefinitionMetadata(cpg-casereporting-service)
* name = "CPGCaseReportingService"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-service"

Instance: cpg-casereporting-client
InstanceOf: ActorDefinition
Usage: #definition
Title: "CPG Case Reporting Client"
Description: "A CPG Client that triggers and submits case reports (derived capability: Case Reporting). Case reporting is expected to align with the Electronic Case Reporting implementation guide, so no capability statement is defined here."
* insert ActorDefinitionMetadata(cpg-casereporting-client)
* name = "CPGCaseReportingClient"
* type = #system
* documentation = "See the [Actors](actors.html) page for how this actor works with its CPG Service or CPG Client counterpart."
* derivedFrom[+] = "http://hl7.org/fhir/uv/cpg/ActorDefinition/cpg-client"
