Instance: EV-PIRADSScore
InstanceOf: EvidenceVariable
Description: "Prostate biopsies are systematic and targeted in cases of PI-RADS ≥3 lesions."
Usage: #example
* name = "PIRADSGreaterEqual3"
* title = "Recruitment variable: PIRADS Score"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* characteristic[+].description = "PI-RADS ≥3"
* characteristic[=].definitionExpression.description = "Includes cases where the PI-RADS score is greater than or equal to 3."
* characteristic[=].definitionExpression.language = #text/cql
* characteristic[=].definitionExpression.expression = "exists([Observation: code in \"52988006|SNOMED\"] O where O.value >= 3 )"
