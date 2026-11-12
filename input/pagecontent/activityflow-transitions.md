<a id="activity-flow-state-transition-capabilities"></a>

The following capabilities describe application behavior at the **pattern level**. They are not additional FHIR operations defined by this IG. Map each behavior to the actual resource's elements and allowed codes, and apply the local authorization and persistence rules.

For transitions that create a new resource, separate preparation from commitment. Preparation constructs a candidate for review. At commitment, re-read the source, check its current state and the actor's authority, assign the new resource's identity, and preserve the relationship to its source. Persist related changes consistently. A preview created earlier may no longer describe the current patient or request.

### Update {#update}

Update an incomplete or active request, or an event that can still be amended under its resource-specific rules. Moving a request from draft to active indicates it is ready for the next workflow step, not that the activity was performed.

### Suspend {#suspend}

Pause an active request or an in-progress activity where the resource supports an on-hold state. Record the reason in the applicable element. Do not invent an on-hold code for a resource that has none.

### Resume {#resume}

Return a paused request or event to its applicable active/in-progress state after checking that resumption is appropriate. Update the current reason while retaining the history of why it was paused.

### Plan {#plan}

Prepare a new plan-intent request from an active proposal and link it to that proposal, typically using `basedOn`. Before saving the plan, verify that the proposal remains active and the prepared request has the intended draft or active state. The same distinction applies to a plan not to perform an activity.

### Revoke {#revoke}

Withdraw a request that is no longer applicable, generally by the originating actor. Use the resource-specific state and reason for withdrawal. This is different from a receiving actor rejecting its fulfillment.

### Reject {#reject}

Record refusal to fulfill a request using the appropriate Task. In the pattern described here, the Task is requested, its `focus` identifies the active request, and its fulfillment code describes the task; rejection changes the Task to `rejected` and can record a reason. Rejection does not mean the requested activity happened.

### Order {#order}

Prepare a new order-intent request from an active proposal or plan, preserving the source link. At commitment, verify the source and prepared states and the authority to order. In this pattern, mark the source proposal or plan completed as the authorized order replaces it, using the resource-specific completion state. Record the new order and source-state change together. Ordering an activity not to be performed retains that negative intent.

### Entered In Error {#entered-in-error}

Mark a record as entered in error when the record itself should not be treated as valid. This is different from a valid request being revoked or a valid event being stopped. Use the resource's actual error/correction semantics and retain traceability to related records.

### Perform {#perform}

Prepare the appropriate event from an active request and link it to the request where the resource supports that relationship. Recheck the source before saving the event. Complete the request only when its overall fulfillment is complete: an initial dispense does not complete an order with remaining refills.

A request not to perform an activity normally does not produce a performance event. Where the record explicitly documents non-performance, use the resource-specific representation and reason.

### Start {#start}

Move a prepared event to in-progress when work begins, if those states exist for the event type.

### Not Done {#not-done}

Record that the activity was not performed, using the resource-specific status and reason. Absence of an event is not the same as an explicit not-done record.

### Stop {#stop}

Record that an activity ended before completion. Choose the actual event code and preserve its reason and source relationships.

### Complete {#complete}

Record completed performance using the event's actual status vocabulary. Evaluate separately whether the originating request is fully satisfied.

Return to [Activity Flow](activityflow.html) for phases, resource mappings, and lifecycle examples.
