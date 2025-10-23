CodeSystem: COS_CustomOperations  
Id: COS-CustomOperations
Title: "Custom Operations"
Description: "Codes for custom operations in the FHIR ecosystem for use in TestScripts."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #extract "Extract Data" "Extract data from a QuestionnaireResponse into another format, such as a FHIR resource."
* #populate "Populate Data" "Populate a QuestionnaireResponse with data from another source."
* #evaluate "Evaluate CQL" "Evaluate a CQL library and return the results."