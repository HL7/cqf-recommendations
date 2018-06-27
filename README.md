# cdc-acg
Adapting Clinical Guidelines for the Digital Age Implementation Guide (FHIR STU3 (3.0.1))

This project provides the source for the CDC Adapting Clinical Guidelines for the Digital Age Implementation Guide

Commits to this repository will automatically trigger a new build of the IG, which will then be published to the following location:

[http://build.fhir.org/ig/cqframework/cdc-acg/](http://build.fhir.org/ig/cqframework/cdc-acg/)

Build log is available here:

[http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/cqframework/cdc-acg](http://build.fhir.org.s3-website-us-east-1.amazonaws.com/logs/cqframework/cdc-acg)

Debugging information is available here:

[http://build.fhir.org/ig/cqframework/cdc-acg/debug.tgz](http://build.fhir.org/ig/cqframework/cdc-acg/debug.tgz)

## Local Build

The HL7 IG Publisher is committed to this repository to make building as easy as possible. To build locally, clone the repository and issue the following command in the root:

    java -jar "org.hl7.fhir.igpublisher.jar" -ig ig.json