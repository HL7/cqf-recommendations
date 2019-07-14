---
layout: default
title: Recommendations
---

# Structuring Recommendations

To support computable representation of a recommendation, this implementation guide describes the following components of a recommendation:

* **Personas**: Who are the participants in the recommendation and what roles do they play?
* **Settings**: Where do the activities in the recommendation occur?
* **Processes**: What are the common processes involved in delivering guideline-based care?

By establishing common patterns for these aspects of recommendations, specific guidelines can better share common aspects such as workflow insertion points.

## Personas

The personas identified in this implementation guide are defined based on the WHO recommendation for [Classifying health workers](https://www.who.int/hrh/statistics/Health_workers_classification.pdf). This recommendation uses codes from the [International Standard Classification for Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm) but defines several additional categories of workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well.

Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a W. Where a code is introduced by this implementation guide, it is constructed beginning with a C.

## Settings

For settings, this implementation guide uses the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set, as it contains generally applicable, broadly standardized settings for use in the computable representation of guideline recommendations.

## Processes

The common processes identified in this implementation guide are based on surveys of guideline content, both in the examples used in this guide, as well as other guideline content from various clinical domains and guideline authors. The result is the definition of a _common pathway_ that is intended to be applicable in any guideline-based care content. 

# Using Terminology

# Inclusion/Exclusion Criteria

# Structuring Order Sets

# Applying to Patients in Context
