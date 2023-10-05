# Activity Flow

## General Activity Flow

Definition -> Proposal -> Plan -> Order -> Event

RequestStatus -> draft | active | on-hold | revoked | completed | entered-in-error | unknown

EventStatus -> preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown

Decision support services are expected to produce Request resources in proposal intent with a status of draft

Valid state transitions for RequestStatus:

* draft -> active
* active -> on-hold
* on-hold -> active
* active -> completed
* active -> revoked

In addition, any state can be transitioned to entered-in-error

Only active proposals can be transitioned to plans. Transitioning a proposal to a plan is expected to produce a Request resource in plan intent with a status of draft

Only active plans can be transitioned to orders. Transitioning a plan to an order is expected to produce a Request resource in order intent with a status of draft

Only active orders can be transitioned to events. Transitioning an order to an event is expected to produce an Event resource with a status of prepration

Note that with the appropriate authority, the plan step in this process can be skipped (i.e. a proposal can transition directly to an order)

Valid state transitions for EventStatus:

* preparation -> not-done
* preparation -> in-progress
* in-progress -> on-hold
* on-hold -> in-progress
* in-progress -> completed
* in-progress -> stopped

In addition, any state can be transitioned to entered-in-error

Capabilities:

### Update

Given a draft or active request, update the request

```
requestApi.update(Request inputRequest)
    check inputRequest.status in { draft | active }
    engine.save(inputRequest)
```

Given a preparation or in-progress event, update the event

```
requestApi.update(Event inputEvent)
    check inputEvent.status in { preparation | in-progress }
    engine.save(inputEvent)
```

### Suspend

Given an active request, suspend the request, with or without a reason

```
requestApi.suspend(Request inputRequest, String reason)
    check inputRequest.status = active
    set inputRequest.status = on-hold
    set inputRequest.statusReason = reason
    engine.save(inputRequest)
```

Given an in-progress event, suspend the event, with or without a reason

```
requestApi.suspend(Event inputEvent, String Reason)
    check inputEvent.status = in-progress
    set inputEvent.status = on-hold
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

### Resume

Given a suspended request, resume the request

```
requestApi.resume(Request inputRequest)
    check inputRequest.status = on-hold
    set inputRequest.status = active
    set inputRequest.statusReason = null
    engine.save(inputRequest)
```

Given a suspended event, resume the event

```
requestApi.resume(Event inputEvent)
    check inputEvent.status = on-hold
    set inputEvent.status = in-progress
    set inputEvent.statusReason = null
    engine.save(inputEvent)
```

### Plan

Given an active proposal, plan the proposal

```
Request requestApi.beginPlan(Request inputProposal)
    check inputProposal.intent = proposal
    check inputProposal.status = active
    var result = new Request(copy from inputProposal)
    set result.id = null
    set result.intent = plan
    set result.status = draft
    set result.basedOn = referenceTo(inputProposal)

requestApi.endPlan(Request inputPlan)
    check inputPlan.basedOn is not null
    var basedOnProposal = engine.get(inputPlan.basedOn)
    check basedOnProposal.intent = proposal
    check basedOnProposal.status = active
    check inputPlan.status in { draft | active }
    check inputPlan.intent = plan
    set basedOnProposal.status = completed
    try
        engine.save(inputPlan)
        engine.save(basedOnProposal)
    commit
```

### Reject

Given an active request, reject the request, with or without a reason

```
requestApi.reject(Request inputRequest, String inputReason)
    check inputRequest.status = active
    set inputRequest.status = revoked
    set inputRequest.statusReason = inputReason
    engine.save(inputProposal)
```

### Order

Given an active proposal or plan, order the proposal

```
Request requestApi.beginOrder(Request inputRequest)
    check inputRequest.intent in { proposal | plan }
    check inputRequest.status = active
    var result = new Request(copy from inputRequest)
    set result.id = null
    set result.intent = order
    set result.status = draft
    set result.basedOn = referenceTo(inputRequest)

requestApi.endOrder(Request inputOrder)
    check inputOrder.basedOn is not null
    var basedOn = engine.get(inputOrder.basedOn)
    check basedOn.intent in { proposal | plan }
    check basedOn.status = active
    check inputOrder.status in { draft | active }
    check inputOrder.intent = order
    set basedOn.status = completed
    try
        engine.save(inputOrder)
        engine.save(basedOn)
    commit
```

### Entered In Error

Given a request, mark the proposal entered-in-error, with or without a reason

```
requestApi.enteredInError(Request inputRequest, String reason)
    set inputRequest.status = entered-in-error
    set inputRequest.statusReason = reason
    engine.save(inputRequest)
```

Given an event, mark the event entered-in-error, with or without a reason

```
requestApi.enteredInError(Event inputEvent, String reason)
    set inputEvent.status = entered-in-error
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

### Perform

Given an active order, perform the event

```
Event requestApi.beginPerform(Request inputRequest)
    check inputRequest.intent = order
    check inputRequest.status = active
    var result = new Event(copy from inputRequest)
    result.status = preparation
    result.basedOn = referenceTo(inputRequest)

requestApi.endPerform(Event inputEvent)
    check inputEvent.basedOn is not null
    var basedOn = engine.get(inputEvent.basedOn)
    check basedOn.intent = order
    check basedOn.status = active
    check inputEvent.status in { preparation | in-progress }
    set basedOn.status = completed
    try
      engine.save(basedOn)
      engine.save(inputEvent)
    commit
```

### Start

Given a preparation event, start the event

```
requestApi.start(Event inputEvent)
    check inputEvent.status = preparation
    set inputEvent.status = in-progress
    engine.save(inputEvent)
```

### Not Done

Given a preparation event, mark the event not-done  (with or without a reason)

```
requestApi.notDone(Event inputEvent, String reason)
    check inputEvent.status = preparation
    set inputEvent.status = not-done
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

### Stop

Given an in-progress event, stop the event, with or without a reason

```
requestApi.stop(Event inputEvent, String reason)
    check inputEvent.status = in-progress
    set inputEvent.status = stopped
    set inputEvent.statusReason = reason
    engine.save(inputEvent)
```

### Complete

Given an in-progress event, complete the event

```
requestApi.complete(Event inputEvent)
    check inputEvent.status = in-progress
    set inputEvent.status = completed
    engine.save(inputEvent)
```

Work through this level of detail for each of the activities (https://hl7.org/fhir/uv/cpg/examples/activities/activities.html):

## Send a message
## Collect information
## Order a medication
## Dispense a medication
## Administer a medication
## Document a medication
## Recommend an immunization (DEPRECATED: Use Order a medication)
## Order a service
## Enroll a patient
## Generate a report
## Propose a diagnosis
## Record a detected issue
## Record an inference
## Report a flag
