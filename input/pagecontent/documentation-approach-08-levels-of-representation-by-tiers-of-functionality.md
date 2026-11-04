Use this matrix to plan the work products for one guideline capability. **Levels** describe the degree and setting of formalization. **Tiers** describe the responsibility being expressed. A project can iterate across the matrix rather than complete it cell by cell.

| Functional tier | L1: narrative | L2: semi-structured | L3: computable | L4: local executable implementation |
|---|---|---|---|---|
| Data | Clinical concepts and relevant patient information | Data dictionary, terminology choices and time/source definitions | Profiles, CodeSystems, ValueSets and data requirements | Validated local mappings and data access |
| Clinical logic | Recommendation and its clinical conditions | Decision tables, process models and reviewed examples | Libraries, activity and plan definitions; measures where needed | Configured engine or translated logic, local triggers and evaluated results |
| Forms | Information clinicians/patients need to provide or review | User stories, interaction sketches and branching rules | Questionnaire and relevant population/extraction expressions | Rendered interactions, permissions and local workflow |

For an illustrative recommendation involving a measured patient feature, L2 review might settle which measurement and time window to use. L3 then expresses that data contract, applicability condition and proposed activity. L4 verifies that the local data, trigger and presentation preserve those decisions. A form is only needed if the intended capability includes an interaction; a service may consume already-recorded information.

This matrix is an explanatory planning aid, not a new conformance profile. It follows the levels-by-tiers distinction previously illustrated in this guide by B. Rhodes, Database Consulting Group (2019); the table is a new textual presentation. See [levels of representation](documentation-approach-06-01-levels-of-knowledge-representation.html), [functional tiers](documentation-approach-07-tiers-of-functionality.html) and the [L1–L4 checklists](checklists.html) for definitions and review questions.
