// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_USCOREPROCEDUREPROFILE = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure";
public const RESOURCE_NAME_USCOREPROCEDUREPROFILE = "Procedure";

# FHIR USCoreProcedureProfile resource record.
#
# + resourceType - The type of the resource describes
# + note - Any other notes and comments about the procedure.
# + partOf - A larger event of which this particular procedure is a component or step.
# + complication - Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. 'Laparoscopic Appendectomy').
# + subject - The person, animal or group on which the procedure was performed.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + reasonReference - The justification of why the procedure was performed.
# + language - The base language in which the resource is written.
# + performedRange - Estimated or actual date, date-time, period, or age when the procedure was performed. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + performedAge - Estimated or actual date, date-time, period, or age when the procedure was performed. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + instantiatesUri - The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
# + performedPeriod - Estimated or actual date, date-time, period, or age when the procedure was performed. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + performedString - Estimated or actual date, date-time, period, or age when the procedure was performed. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + followUp - If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used.
# + statusReason - Captures the reason for the current state of the procedure.
# + usedCode - Identifies coded items that were used as part of the procedure.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + reasonCode - The coded reason why the procedure was performed. This may be a coded entity of some type, or may simply be present as text.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + performedDateTime - Estimated or actual date, date-time, period, or age when the procedure was performed. Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.
# + basedOn - A reference to a resource that contains details of the request for this procedure.
# + outcome - The outcome of the procedure - did it resolve the reasons for the procedure being performed?
# + identifier - Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.
# + recorder - Individual who recorded the record and takes responsibility for its content.
# + complicationDetail - Any complications that occurred during the procedure, or in the immediate post-performance period.
# + performer - Limited to 'real' people rather than equipment.
# + usedReference - Identifies medications, devices and any other substance used as part of the procedure.
# + focalDevice - A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
# + encounter - The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated.
# + instantiatesCanonical - The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.
# + bodySite - Detailed and structured anatomical location information. Multiple locations are allowed - e.g. multiple punch biopsies of a lesion.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + asserter - Individual who is making the procedure statement.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + report - This could be a histology result, pathology report, surgical report, etc.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + location - The location where the procedure actually happened. E.g. a newborn at home, a tracheostomy at a restaurant.
# + category - A code that classifies the procedure for searching, sorting and display purposes (e.g. 'Surgical Procedure').
# + status - A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.
@r4:ResourceDefinition {
    resourceType: "Procedure",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure",
    elements: {
        "note" : {
            name: "note",
            dataType: r4:Annotation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.note"
        },
        "partOf" : {
            name: "partOf",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.partOf"
        },
        "complication" : {
            name: "complication",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.complication",
            valueSet: "http://hl7.org/fhir/ValueSet/condition-code"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.extension"
        },
        "code" : {
            name: "code",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            path: "Procedure.code",
            valueSet: "http://hl7.org/fhir/us/core/ValueSet/us-core-procedure-code"
        },
        "subject" : {
            name: "subject",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "Procedure.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.modifierExtension"
        },
        "reasonReference" : {
            name: "reasonReference",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.reasonReference"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "performedRange" : {
            name: "performedRange",
            dataType: r4:Range,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.performed[x]"
        },
        "performedAge" : {
            name: "performedAge",
            dataType: r4:Age,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.performed[x]"
        },
        "instantiatesUri" : {
            name: "instantiatesUri",
            dataType: r4:uri,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.instantiatesUri"
        },
        "performedPeriod" : {
            name: "performedPeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.performed[x]"
        },
        "performedString" : {
            name: "performedString",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.performed[x]"
        },
        "followUp" : {
            name: "followUp",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.followUp",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-followup"
        },
        "statusReason" : {
            name: "statusReason",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.statusReason",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-not-performed-reason"
        },
        "usedCode" : {
            name: "usedCode",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.usedCode",
            valueSet: "http://hl7.org/fhir/ValueSet/device-kind"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.id"
        },
        "reasonCode" : {
            name: "reasonCode",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.reasonCode",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-reason"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.text"
        },
        "performedDateTime" : {
            name: "performedDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.performed[x]"
        },
        "basedOn" : {
            name: "basedOn",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.basedOn"
        },
        "outcome" : {
            name: "outcome",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.outcome",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-outcome"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.identifier"
        },
        "recorder" : {
            name: "recorder",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.recorder"
        },
        "complicationDetail" : {
            name: "complicationDetail",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.complicationDetail"
        },
        "performer" : {
            name: "performer",
            dataType: USCoreProcedureProfilePerformer,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.performer"
        },
        "usedReference" : {
            name: "usedReference",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.usedReference"
        },
        "focalDevice" : {
            name: "focalDevice",
            dataType: USCoreProcedureProfileFocalDevice,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.focalDevice"
        },
        "encounter" : {
            name: "encounter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.encounter"
        },
        "instantiatesCanonical" : {
            name: "instantiatesCanonical",
            dataType: r4:canonical,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.instantiatesCanonical"
        },
        "bodySite" : {
            name: "bodySite",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.bodySite",
            valueSet: "http://hl7.org/fhir/ValueSet/body-site"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.contained"
        },
        "asserter" : {
            name: "asserter",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.asserter"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.meta"
        },
        "report" : {
            name: "report",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Procedure.report"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.implicitRules"
        },
        "location" : {
            name: "location",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.location"
        },
        "category" : {
            name: "category",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Procedure.category",
            valueSet: "http://hl7.org/fhir/ValueSet/procedure-category"
        },
        "status" : {
            name: "status",
            dataType: USCoreProcedureProfileStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "Procedure.status",
            valueSet: "http://hl7.org/fhir/ValueSet/event-status"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type USCoreProcedureProfile record {|
    *r4:DomainResource;

    RESOURCE_NAME_USCOREPROCEDUREPROFILE resourceType = RESOURCE_NAME_USCOREPROCEDUREPROFILE;

    r4:Annotation[] note?;
    r4:Reference[] partOf?;
    r4:CodeableConcept[] complication?;
    r4:Extension[] extension?;
    r4:CodeableConcept code;
    r4:Reference subject;
    r4:Extension[] modifierExtension?;
    r4:Reference[] reasonReference?;
    r4:code language?;
    r4:Range performedRange?;
    r4:Age performedAge?;
    r4:uri[] instantiatesUri?;
    r4:Period performedPeriod?;
    string performedString?;
    r4:CodeableConcept[] followUp?;
    r4:CodeableConcept statusReason?;
    r4:CodeableConcept[] usedCode?;
    string id?;
    r4:CodeableConcept[] reasonCode?;
    r4:Narrative text?;
    r4:dateTime performedDateTime?;
    r4:Reference[] basedOn?;
    r4:CodeableConcept outcome?;
    r4:Identifier[] identifier?;
    r4:Reference recorder?;
    r4:Reference[] complicationDetail?;
    USCoreProcedureProfilePerformer[] performer?;
    r4:Reference[] usedReference?;
    USCoreProcedureProfileFocalDevice[] focalDevice?;
    r4:Reference encounter?;
    r4:canonical[] instantiatesCanonical?;
    r4:CodeableConcept[] bodySite?;
    r4:Resource[] contained?;
    r4:Reference asserter?;
    r4:Meta meta?;
    r4:Reference[] report?;
    r4:uri implicitRules?;
    r4:Reference location?;
    r4:CodeableConcept category?;
    USCoreProcedureProfileStatus status;
    r4:Element ...;
|};

# FHIR USCoreProcedureProfileFocalDevice datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + action - The kind of change that happened to the device during the procedure.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + manipulated - The device that was manipulated (changed) during the procedure.
@r4:DataTypeDefinition {
    name: "USCoreProcedureProfileFocalDevice",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Procedure.focalDevice.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Procedure.focalDevice.modifierExtension"
        },
        "action": {
            name: "action",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "The kind of change that happened to the device during the procedure.",
            path: "Procedure.focalDevice.action"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Procedure.focalDevice.id"
        },
        "manipulated": {
            name: "manipulated",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The device that was manipulated (changed) during the procedure.",
            path: "Procedure.focalDevice.manipulated"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type USCoreProcedureProfileFocalDevice record {|
    *r4:BackboneElement;

    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    r4:CodeableConcept action?;
    string id?;
    r4:Reference manipulated;
|};

# FHIR USCoreProcedureProfilePerformer datatype record.
#
# + actor - The practitioner who was involved in the procedure.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + 'function - Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + onBehalfOf - The organization the device or practitioner was acting on behalf of.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "USCoreProcedureProfilePerformer",
    baseType: (),
    elements: {
        "actor": {
            name: "actor",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The practitioner who was involved in the procedure.",
            path: "Procedure.performer.actor"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Procedure.performer.extension"
        },
        "function": {
            name: "function",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            description: "Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.",
            path: "Procedure.performer.function"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Procedure.performer.modifierExtension"
        },
        "onBehalfOf": {
            name: "onBehalfOf",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "The organization the device or practitioner was acting on behalf of.",
            path: "Procedure.performer.onBehalfOf"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Procedure.performer.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type USCoreProcedureProfilePerformer record {|
    *r4:BackboneElement;

    r4:Reference actor;
    r4:Extension[] extension?;
    r4:CodeableConcept 'function?;
    r4:Extension[] modifierExtension?;
    r4:Reference onBehalfOf?;
    string id?;
|};

# USCoreProcedureProfileStatus enum
public enum USCoreProcedureProfileStatus {
   CODE_STATUS_STOPPED = "stopped",
   CODE_STATUS_COMPLETED = "completed",
   CODE_STATUS_NOT_DONE = "not-done",
   CODE_STATUS_ENTERED_IN_ERROR = "entered-in-error",
   CODE_STATUS_IN_PROGRESS = "in-progress",
   CODE_STATUS_ON_HOLD = "on-hold",
   CODE_STATUS_PREPARATION = "preparation",
   CODE_STATUS_UNKNOWN = "unknown"
}

