Instance: EV-ClinicalSuspicionPCa
InstanceOf: EvidenceVariable
Description: "Cohorts consist of men with clinical suspicion of PCa based on PSA > 3.0 ng/ml and/or abnormal DRE."
Usage: #example
* name = "ClinicalSuspicionOfPCA"
* title = "Recruitment variable: Clinical Suspicion Of PCA"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* characteristic[+].description = "PSA level greater than 3.0 ng/ml or abnormal DRE."
* characteristic[=].definitionExpression.description = "Includes men if their PSA level is greater than 3.0 ng/ml or if they have an abnormal digital rectal examination (DRE)."
* characteristic[=].definitionExpression.language = #text/cql
* characteristic[=].definitionExpression.expression = "exists([Observation: code in \"LP18193-0|LOINC\"] O where O.value >= 3 'ng/mL') or exists([Observation: code in \"LL1478-8|LOINC\"] B where B.interpretation = \"S|ObservationInterpretation\")"
