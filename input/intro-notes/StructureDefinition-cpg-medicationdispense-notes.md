<div id="cpg-medicationdispense-usage"></div>

- `authorizingPrescription` links the dispense to its medication request. `status` and `statusReason[x]` describe the dispense, including incomplete or stopped work using its own vocabulary.

- `medication[x]`, `subject` and `context` identify the supply and its clinical context; `supportingInformation` carries pertinent patient information.

- Case-feature definition, asserted/inferred type and pertinence extensions relate the record to guideline inputs. A dispense does not necessarily complete a prescription with further refills.

Related: [dispensing Task](StructureDefinition-cpg-dispensemedicationtask.html); [medication request](StructureDefinition-cpg-medicationrequest.html); [Activity Flow](activityflow.html).
