<div id="cpg-careplan-usage"></div>

- Category and title are required. Subject, encounter, care team, and addressed conditions use the corresponding CPG profiles.
- An activity reference can target Appointment, CPGCommunicationRequest, CPGMedicationRequest, CPGTask, CPGServiceRequest, or CPGStrategy. When inline `detail` is used, kind, code, description, and the inherited status are required; scheduling is limited to Timing or Period.
- An outcome reference documents a related result; it does not make a proposal, request, and completed event interchangeable.

Related guidance: [Patient-specific care plans](approach-model.html#care-plan); [CPGCase](StructureDefinition-cpg-case.html); [activity flow](activityflow.html).
