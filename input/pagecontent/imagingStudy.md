# Link between FHIR ImagingStudy and DICOM Images

## Overview

The [ImagingStudyFlute](StructureDefinition-imagingStudy-eu-flute.html) profile defines how imaging data (typically DICOM images) are represented, identified, and linked to clinical variables collected within the FLUTE project. It ensures interoperability between imaging repositories and the clinical research data captured through FHIR resources.

## Relationship between FHIR and DICOM

| Concept             | FHIR Element                       | DICOM Mapping                | Description                                                                                                            |
| ------------------- | ---------------------------------- | ---------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Study Instance UID  | `ImagingStudy.identifier`          | `(0020,000D)`                | Unique identifier for the imaging study in DICOM. It allows direct linkage to the study in PACS or imaging repository. |
| Series Instance UID | `ImagingStudy.series.uid`          | `(0020,000E)`                | Unique identifier of each DICOM series (e.g., T2-weighted, ADC map, etc.) within the study.                            |
| SOP Instance UID    | `ImagingStudy.series.instance.uid` | `(0008,0018)`                | Unique identifier of a specific image or derived object (e.g., a single DICOM file).                                   |
| Modality            | `ImagingStudy.series.modality`     | `(0008,0060)`                | Imaging modality used (e.g., MR, CT, US).                                                                              |
| Subject (Patient)   | `ImagingStudy.subject`             | `(0010,0020)` Patient module | Links the imaging data to the corresponding FLUTE patient resource.                                                    |

The DICOM images themselves are **not stored directly in FHIR**, but the `ImagingStudy` resource provides **metadata and references** that allow systems to locate and retrieve the actual DICOM files from a PACS or DICOMweb server (using WADO-RS, QIDO-RS, or STOW-RS).
Each FHIR resource can therefore reference the exact study, series, and instance stored on a DICOMweb server using these UIDs.

[FHIR ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html) resources act as **a metadata bridge** — they reference:

- The **DICOM Study UID**, identifying the imaging session.
- The **Series UID and SOP Instance UIDs**, identifying each series and instance image.
- The **Patient (subject)** resource, linking the imaging data to clinical information.
- The research variables (e.g., PSA, PIRADS score, biopsy data).

## Integration within FLUTE

In the FLUTE project, the [ImagingStudyFlute](StructureDefinition-imagingStudy-eu-flute.html) profile enables the linkage between:

- DICOM imaging data (MRI, TRUS, etc.),
- Clinical observations such as `PR_PIRADSScore`, `PR_ProstateVolume`, `PR_ProstateSpecificAntigen`, and
- Research-specific criteria defined in EvidenceVariables (e.g., “Patients without MRI prior to the biopsy or with images older than one year before the biopsy”).

The extension [supporting-info](StructureDefinition-resource-supportingInfo.html) allows referencing the related FLUTE variables or procedures that were obtained or derived from the imaging study.

This allows the **researcher to link each DICOM series** (via UIDs) to the corresponding MRI session and ensure validation of inclusion/exclusion criteria such as:

> “Patients without MRI images prior to the biopsy or with images obtained earlier than one year before the biopsy.”

This validation can be implemented using a FHIRPath or CQL expression comparing:

- `ImagingStudy.started` (MRI date)
- `Procedure.date` (biopsy date)

## Accessing DICOM Images through DICOMweb

While the `ImagingStudy` resource provides the metadata necessary to describe and identify imaging data, the **actual DICOM objects** (the pixel data) remain stored in imaging systems such as a **PACS**, **VNA**, or a **DICOMweb** server.

### Complementary roles of FHIR and DICOMweb

FHIR and DICOM are complementary standards that serve different but interoperable purposes:

- **DICOM** defines how medical images and associated metadata are encoded, stored, and exchanged.
- **FHIR** defines how healthcare data, including references to imaging studies, are structured and exposed via RESTful APIs.
- Together, **FHIR acts as a clinical and research index**, while **DICOMweb (QIDO-RS, WADO-RS, STOW-RS)** provides access to the actual imaging data and thumbnails.

This architecture enables systems to discover, filter, and retrieve imaging data based on clinical context, without duplicating large image payloads inside the FHIR repository.

### Discovering and retrieving images

Once the DICOM UIDs are available in the FHIR `ImagingStudy`, a client can retrieve or visualize the corresponding images from a DICOMweb server using standard API calls:

1. **Query (QIDO-RS)**
   Retrieve metadata or list of series and instances for a study:

   ```
   GET /dicomweb/studies/{StudyInstanceUID}/series
   GET /dicomweb/studies/{StudyInstanceUID}/series/{SeriesInstanceUID}/instances
   ```

2. **Retrieve (WADO-RS)**
   Fetch the image or a rendered representation:

   ```
   GET /dicomweb/studies/{StudyInstanceUID}/series/{SeriesInstanceUID}/instances/{SOPInstanceUID}
   Accept: application/dicom  // raw DICOM file
   Accept: image/jpeg         // rendered view
   ```

3. **Store (STOW-RS)**
   Upload new DICOM objects (if authorized):

   ```
   POST /dicomweb/studies
   Content-Type: multipart/related; type="application/dicom"
   ```

These APIs allow FHIR clients to seamlessly navigate between the clinical context and the underlying DICOM images, without any duplication of imaging data.

### Example workflow

1. A researcher queries the FHIR server:

   ```
   GET /ImagingStudy?subject=Patient/Patient-001
   ```

   The response includes:

   ```json
   {
     "resourceType": "ImagingStudy",
     "identifier": [
       { "value": "1.2.840.113619.2.55.3.604688437.690.1590577693.467" }
     ],
     "series": [
       {
         "uid": "1.2.840.113619.2.55.3.604688437.690.1590577701.468",
         "instance": [
           {
             "uid": "1.2.840.113619.2.55.3.604688437.690.1590577701.500"
           }
         ]
       }
     ]
   }
   ```

2. Using these identifiers, the client builds the corresponding DICOMweb URL:

   ```
   GET https://dicom-server.org/wado/studies/1.2.840.113619.2.55.3.604688437.690.1590577693.467/
       series/1.2.840.113619.2.55.3.604688437.690.1590577701.468/
       instances/1.2.840.113619.2.55.3.604688437.690.1590577701.500
   ```

3. The image can then be displayed in a viewer or used in machine learning pipelines.