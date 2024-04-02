Instance: EV-PCAFamilyHistory
InstanceOf: EvidenceVariable
Description: "Family history of prostate cancer: Indicates if the patient has known family history of prostate cancer."
Usage: #example
* name = "PCaFamilyHistory"
* title = "Study variable: Prostate Cancer Family History"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* relatedArtifact[+].type = #derived-from
* relatedArtifact[=].label = "data source"
* relatedArtifact[=].citation = "The Barcelona Predictive Model of Clinically Significant Prostate Cancer: Contributors: Morote, J.; Borque-Fernando, A.; Triquell, M.; Celma, A.; Regis, L.; Escobar, M.; Mast, R.; de Torres, I.M.; Semidey, M.E.; Abascal,
J.M.; Sola, C.; Servian, P.; Salvador, D.; Santamaría, A.; Planas, J.; Esteban, L.M.; Trilla, E. In: Cancers, PMID 35326740. Published March 21, 2022. Available at: https://pubmed.ncbi.nlm.nih.gov/35326740/."
* relatedArtifact[=].document.url = "https://www.mdpi.com/2072-6694/14/6/1589"
* characteristic[+].description = "description"
* characteristic[=].definitionExpression.description = "The expression to determine if the patient has a family history of prostate cancer"
* characteristic[=].definitionExpression.language = #text/fhirpath
* characteristic[=].definitionExpression.expression = "FamilyMemberHistory.condition.code.where(system='http://snomed.info/sct' and code='399068003').exists()"
