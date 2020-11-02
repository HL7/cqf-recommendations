---
layout: default
title: Mechanisms of Integration
---

# Mechanisms of Integration

Broadly speaking, there are two main mechanisms for integrating computable guideline content:

* Content import: Importing/ingestion by a system capable of interpreting the content
* Content service: Integration as a service

## Content Import

The content import mechanism involves ingestion of computable content by a system that is capable of interpreting the content. The most straight-forward example of this is the import of a quality measure specification by a quality reporting system. As another example, a decision support rule could be ingested in the same way, using established triggering points and making the data required for rule processing available to the evaluating environment.

<img src="assets/images/integration-content-ingestion.png" alt="Content ingestion/import" class="img-responsive img-rounded center-block" />
<p><em>Figure 1</em> Content ingestion/import</p>

## Service Integration

The service integration mechanism involves establishing APIs for delivery of content. The CDS Hooks specification provides a standard API for the integration of decision support with clinical systems.

<img src="assets/images/integration-content-service.png" alt="Content service" class="img-responsive img-rounded center-block" />
<p><em>Figure 1</em> Content service</p>

## Hybrid

Just as there are various enablements (or delivery vectors) for computable content, there are variations on the integration themes above, including of course the use of different mechanisms together. For example, a system may implement partial ingestion of content, and use a service to cover gaps, or a system may use ingestion for some recommendations, but a service for others.
