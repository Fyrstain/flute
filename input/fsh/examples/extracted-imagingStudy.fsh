Instance: extract-Questionnaire-StudyVariableV2-123-imaging-group
InstanceOf: imagingStudy-eu-flute
Title: "Example ImagingStudy with FLUTE variables"
Description: "An example of an ImagingStudy resource conforming to the ImagingStudyFlute profile, extracted from a QuestionnaireResponse"
Usage: #example
* meta.profile = "http://hl7.eu/fhir/ig/flute/StructureDefinition/imagingStudy-eu-flute"
* identifier
  * system = "http://hospital.example.org/imaging/studies"
  * value = "STUDY-12345"
* status = #available
* subject = Reference(urn:uuid:b5d7888a-21fe-44bd-b988-a63f34555d2a)
* started = "2023-08-15T10:30:00Z"
* endpoint.display = "http://dicomserver.example.org"
* note.text = "No artifacts present"
* series[+]
  * uid = "1.2.840.113619.2.55.3.604688437.783.1599767052.467"
  * modality = $DCM#CT
  * instance
    * uid = "1.2.840.113619.2.55.3.604688437.783.1599767052.468"
    * sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series[+]
  * uid = "1.2.840.113619.2.55.3.604688437.783.1599767052.469"
  * modality = $DCM#CT
  * instance[+]
    * uid = "1.2.840.113619.2.55.3.604688437.783.1599767052.470"
    * sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
  * instance[+]
    * uid = "1.2.840.113619.2.55.3.604688437.783.1599767052.471"
    * sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.3