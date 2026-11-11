<div id="cpg-questionnaireresponse-usage"></div>

- `questionnaire` identifies the form. `status` uses R4 response codes: `in-progress`, `completed`, `amended`, `entered-in-error` or `stopped`.

- `subject` targets CPGPatient or CPGRelatedPerson; `encounter` targets CPGEncounter. `author` records who captured the response and `source` who answered; their allowed targets are the listed CPG patient, practitioner, practitioner-role and related-person profiles.

- `authored` and `item` retain response timing and answers. Population and extraction need their own validation; completing a response does not authorize its suggested clinical actions.

Related: [collection Task](StructureDefinition-cpg-questionnairetask.html); [Interactive CDS](interactive-cds.html); [case features](approach-model.html#case).
