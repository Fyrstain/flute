Instance: EV-DRE
InstanceOf: EvidenceVariable
Description: "Digital rectal examination results: Indicates the results of DRE (normal or suspicious)"
Usage: #example
* name = "DRE"
* title = "Study variable: PI-RADS"
* status = #draft
* date = "2024-04-02T12:00:00.088Z"
* relatedArtifact[+].type = #derived-from
* relatedArtifact[=].label = "data source"
* relatedArtifact[=].citation = "The Barcelona Predictive Model of Clinically Significant Prostate Cancer: Contributors: Morote, J.; Borque-Fernando, A.; Triquell, M.; Celma, A.; Regis, L.; Escobar, M.; Mast, R.; de Torres, I.M.; Semidey, M.E.; Abascal,
J.M.; Sola, C.; Servian, P.; Salvador, D.; Santamaría, A.; Planas, J.; Esteban, L.M.; Trilla, E. In: Cancers, PMID 35326740. Published March 21, 2022. Available at: https://pubmed.ncbi.nlm.nih.gov/35326740/."
* relatedArtifact[=].document.url = "https://www.mdpi.com/2072-6694/14/6/1589"
* characteristic[+].description = "The results of DRE (normal or suspicious)"
* characteristic[=].definitionExpression.description = "The expression to retrieve the result of DRE from observation interpretation"
* characteristic[=].definitionExpression.language = #text/fhirpath
* characteristic[=].definitionExpression.expression = "Observation.code.where(system='http://loinc.org' and code='LL1478-8').interpretation"
