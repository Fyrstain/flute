Instance: ResearchVariablesFLUTE
InstanceOf: Library
Description: "Retrieves key research variables for prostate cancer studies."
Usage: #definition
* url = "https://flute.com/Library/ResearchVariablesFLUTE"
// // * url =  "http://hl7.eu/fhir/ig/flute/Library/ResearchVariables"
// * version = "1.0.0"
* name = "ResearchVariablesFLUTE"
* title = "Prostate Cancer Research Variables"
* status = #draft
* type = $library-type#logic-library
* subjectCodeableConcept = http://hl7.org/fhir/resource-types#Patient
* content.id = "ig-loader-ResearchVariablesFLUTE.cql"