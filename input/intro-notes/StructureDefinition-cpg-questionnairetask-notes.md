<div id="cpg-questionnairetask-usage"></div>

- The `code` pattern includes `collect-information`. `input:questionnaire` is required once, typed `collect-information`, with a canonical targeting CPGComputableQuestionnaire.

- `output:questionnaireResponse` is optional 0..1, typed `collect-information`, and references CPGQuestionnaireResponse. Task and response statuses use different vocabularies.

- Population, user confirmation and extraction can contribute data to reevaluation. They do not make every returned proposal an accepted clinical action.

Related: [activity definition](StructureDefinition-cpg-collectinformationactivity.html); [related clinical resource](StructureDefinition-cpg-questionnaireresponse.html); [Activity Flow](activityflow.html); [Interactive CDS](interactive-cds.html).
