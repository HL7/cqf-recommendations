/*  Library: CDC Common Logic for FHIRv300
    Author: CMS Alliance to Modernize Healthcare, operated by THE MITRE Corporation.

    (C) 2019 The MITRE Corporation. All Rights Reserved. Approved for Public Release: 19-2048. Distribution Unlimited.
*/
library CDC_Common_Logic_FHIRv300 version '1.0.0'

using FHIR version '3.0.0'

// Include the FHIRHelpers library for simplifying interacton w/ the FHIR data model
include FHIRHelpers version '3.0.0' called FHIRHelpers

/**
 * Converts a codeable concept to text.
 * @param c - a FHIR codeable concept
 * @returns {System.String} a CQL String of text
 */
define function ConceptText(c FHIR.CodeableConcept):
  Coalesce(c.text.value, Coalesce((c.coding) c2 return c2.display.value))

/**
  * Converts a FHIR Date to text.
  * @param d - a FHIR Date
  * @returns {System.String} a CQL String of text
 */
define function DateText(d FHIR.date):
  ToString(d.value)

/**
  * Converts a FHIR DateTime to text.
  * @param d - a FHIR DateTime
  * @returns {System.String} a CQL String of text
 */
define function DateTimeText(d FHIR.dateTime):
  ToString(d.value)

/**
  * Converts a CQL Code to a Tuple containing the system, code, and display fields.
  * @param d - a CQL code
  * @returns {Tuple} a Tuple
 */
define function FormatCode(c System.Code):
  {
    system: c.system,
    code: c.code,
    display: c.display
  }

/**
  * Forms a local refernce using a type and an id string
  * @param type - A String specifying the resource type of the reference
  * @param id - A String specifying the resource id of the reference
  * @returns {System.String} a string of text containing the local reference
 */
define function GenerateLocalReference(type System.String, id System.String):
  Combine({type, '/', id})

/**
  * Removes null entries from a list of strings
  * @param list - A list of strings
  * @returns {List<System.String>} the input list with the null entries removed
 */
define function CullNullStrings(list List<System.String>):
  list L where L is not null

/**
  * Finds the first non-null meaningful date that can be associated with this Condition.  This will look through the
  * following fields in the following order: onsetDateTime.value, onsetPeriod.start, assertedDate.
  * @param Cond - a Condition
  * @returns {System.DateTime} the first non-null meaningful date, or null if non is found
 */
define function FindConditionDate(Cond Condition):
  Coalesce(Cond.onset.value, Cond.onset.start, Cond.assertedDate.value)

/**
  * Finds the most recent Condition in list by examining the following fields in
  * the following order: onsetDateTime.value, onsetPeriod.start, assertedDate.
  * @param CondList - a list of Conditions
  * @returns {Condition} the most recent Condition in the list
 */
define function MostRecentCondition(CondList List<Condition>):
  Last(CondList C sort by Coalesce(onset.value, onset.start, assertedDate.value))

/**
  * Finds the first non-null meaningful date that can be associated with this Procedure.
  * This will look through the following fields in the following order: performedDateTime.value,
  * performedPeriod.start.
  * @param Proc - a Procedure
  * @returns {System.DateTime} the first non-null meaningful date, or null if non is found
 */
define function FindProcedureDate(Proc Procedure):
  Coalesce(Proc.performed.value, Proc.performed.start)

/**
  * Finds the most recent Procedure in list by examining the following fields in
  * the following order: performedDateTime.value, performedPeriod.start.
  * @param CondList - a list of Procedures
  * @returns {Procedure} the most recent Procedure in the list
 */
define function MostRecentProcedure(ProcList List<Procedure>):
  Last(ProcList P sort by Coalesce(performed.value, performed.start))

/**
  * Finds the first non-null meaningful date that can be associated with this MedicationStatement.
  * This will look through the following fields in the following order: effectiveDateTime,
  * s.effectivePeriod."start".
  * @param Proc - a MedicationStatement
  * @returns {System.String} the first non-null meaningful date, or null if non is found
 */
define function MedicationStatementDate(s FHIR.MedicationStatement):
  Coalesce(DateTimeText(s.effective), DateTimeText(s.effective."start"))
