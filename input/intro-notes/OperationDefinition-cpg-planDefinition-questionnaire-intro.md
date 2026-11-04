Use this operation to generate a Questionnaire covering the case-feature data requirements referenced by a PlanDefinition's actions. It supports collecting a plan's information up front, including requirements from referenced nested plans.

The output is a form definition. Patient-specific population, answering, extraction, and reevaluation are separate steps in [interactive CDS](interactive-cds.html). For a form based on one selected data profile, use [StructureDefinition `$questionnaire`](OperationDefinition-cpg-structureDefinition-questionnaire.html).
