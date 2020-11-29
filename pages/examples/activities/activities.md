---
layout: example-default
title: Activities
---

# Overview

These examples illustrate general implementation patterns for activity processing
and recommendations related to performing activities.

NOTE: The recommendations here are dramatically simplified to illustrate the general
pattern for positive and negative recommendations, with the ability for users to reject
the recommendation, and flexibility in how the recommendation is achieved.

Specifically:
* There is no terminology, any communication request/event on any topic will do
* There is no timing, any communication request/event will do at any time
* There is no reference to participants other than the patient
* There is no relationship to a setting
* There is no relationship to an encounter or episode
* There is no relationship to a care plan

These simplifications allow the example to focus exclusively on the pattern for
recommending and for accepting/rejecting the proposal, as well as documenting
the completion, or explicit non-performance of the communication.

## Send Message

A positive recommendation to send a message

* [SendMessage Library](../../Library-SendMessage.html)
* [SendMessage ActivityDefinition](../../ActivityDefinition-activity-example-sendmessage.html)
* [SendMessage PlanDefinition](../../PlanDefinition-activity-example-sendmessage.html)

## Do Not Send Message

A negative recommendation not to send a message

* [DoNotSendMessage Library](../../Library-DoNotSendMessage.html)
* [DoNotSendMessage ActivityDefinition](../../ActivityDefinition-activity-example-donotsendmessage.html)
* [DoNotSendMessage PlanDefinition](../../PlanDefinition-activity-example-donotsendmessage.html)
