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

// --------------------------------------------------------------------------------------------#
// Source C-CDA to FHIR - Resource Mappings
// --------------------------------------------------------------------------------------------#

import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;

# Map CCDA Medication Activity to FHIR MedicationRequest
#
# + substanceAdministrationElement - CCDA Medication Activity Element
# + return - FHIR MedicationRequest
public isolated function mapCcdaMedicationToFhir(xml substanceAdministrationElement) returns international401:MedicationRequest? {
    if isXMLElementNotNull(substanceAdministrationElement) {
        international401:MedicationRequest medication = {medicationReference: {}, subject: {}, medicationCodeableConcept: {}, intent: "option", status: "unknown"};

        xml idElement = substanceAdministrationElement/<v3:id|id>;
        xml statusCodeElement = substanceAdministrationElement/<v3:statusCode|statusCode>;
        xml effectiveTimeElement = substanceAdministrationElement/<v3:effectiveTime|effectiveTime>;
        xml routeCodeElement = substanceAdministrationElement/<v3:routeCode|routeCode>;
        xml doseQuantityElement = substanceAdministrationElement/<v3:doseQuantity|doseQuantity>;
        xml rateQuantityElement = substanceAdministrationElement/<v3:rateQuantity|rateQuantity>;
        xml manufacturedMaterialElement = substanceAdministrationElement/<v3:consumable|consumable>/<v3:manufacturedProduct|manufacturedProduct>/<v3:manufacturedMaterial|manufacturedMaterial>;
        xml entryRelationshipElement = substanceAdministrationElement/<v3:entryRelationship|entryRelationship>;

        int index = 0;
        foreach xml idElem in idElement {
            r4:Identifier? mapCcdaIdToFhirIdentifierResult = mapCcdaIdToFhirIdentifier(idElem);
            if mapCcdaIdToFhirIdentifierResult is r4:Identifier {
                medication.identifier[index] = mapCcdaIdToFhirIdentifierResult;
                index = index + 1;
            }
        }

        medication.status = mapCcdatoFhirMedicationRequestStatus(statusCodeElement);

        r4:Dosage dosageInstruction = {};
        string|error? effectiveTimeValue = effectiveTimeElement.value;
        if effectiveTimeValue is string {
            dosageInstruction.timing.event = [effectiveTimeValue];
        }

        r4:dateTime? mapCCDAEffectiveTimetoFHIRDateTimeResult = mapCcdaDateTimeToFhirDateTime(effectiveTimeElement);
        if mapCCDAEffectiveTimetoFHIRDateTimeResult is r4:dateTime {
            medication.authoredOn = mapCCDAEffectiveTimetoFHIRDateTimeResult != "" ? mapCCDAEffectiveTimetoFHIRDateTimeResult : ();
        }

        xml effectiveLowTimeElement = effectiveTimeElement/<v3:low|low>;
        r4:dateTime? mapCCDAEffectiveLowTimetoFHIRDateTimeResult = mapCcdaDateTimeToFhirDateTime(effectiveLowTimeElement);
        if mapCCDAEffectiveLowTimetoFHIRDateTimeResult is r4:dateTime {
            dosageInstruction.timing.repeat.boundsPeriod.'start = mapCCDAEffectiveLowTimetoFHIRDateTimeResult;
        }

        xml effectiveHighTimeElement = effectiveTimeElement/<v3:high|high>;
        r4:dateTime? mapCCDAEffectiveHighTimetoFHIRDateTimeResult = mapCcdaDateTimeToFhirDateTime(effectiveHighTimeElement);
        if mapCCDAEffectiveHighTimetoFHIRDateTimeResult is r4:dateTime {
            dosageInstruction.timing.repeat.boundsPeriod.end = mapCCDAEffectiveHighTimetoFHIRDateTimeResult;
        }

        if dosageInstruction != {} {
            medication.dosageInstruction = [dosageInstruction];
        }

        medication.dosageInstruction[0].route = mapCcdaCodingtoFhirCodeableConcept(routeCodeElement);

        string|error? doseValue = doseQuantityElement.value;
        string|error? doseUnit = doseQuantityElement.unit;
        if doseValue is string {
            decimal|error doseDecimalVal = decimal:fromString(doseValue);
            medication.dosageInstruction[0].doseAndRate = [
                {
                    doseQuantity: {
                        value: doseDecimalVal is decimal ? doseDecimalVal : (),
                        unit: doseUnit is string ? doseUnit : ()
                    }
                }
            ];
        }

        string|error? rateValue = rateQuantityElement.value;
        string|error? rateUnit = rateQuantityElement.unit;
        if rateValue is string {
            decimal|error rateDecimalVal = decimal:fromString(rateValue);
            medication.dosageInstruction[0].doseAndRate = [
                {
                    rateQuantity: {
                        value: rateDecimalVal is decimal ? rateDecimalVal : (),
                        unit: rateUnit is string ? rateUnit : ()
                    }
                }
            ];
        }

        xml manufacturedMaterialCodeElement = manufacturedMaterialElement/<v3:code|code>;
        r4:CodeableConcept? mapCcdaCodingtoFhirCodeableConceptResult = mapCcdaCodingtoFhirCodeableConcept(manufacturedMaterialCodeElement);
        if mapCcdaCodingtoFhirCodeableConceptResult is r4:CodeableConcept {
            medication.medicationCodeableConcept = mapCcdaCodingtoFhirCodeableConceptResult;
        }

        string|error? entryRelationshipTypeCode = entryRelationshipElement.typeCode;
        if entryRelationshipTypeCode is string && entryRelationshipTypeCode == "RSON" {
            xml entryRelationshipObservationElement = entryRelationshipElement/<v3:observation|observation>;
            xml entryRelationshipObservationValueElement = entryRelationshipObservationElement/<v3:value|value>;

            if entryRelationshipObservationValueElement is xml:Element {
                r4:CodeableConcept? reasonCode = mapCcdaCodingtoFhirCodeableConcept(entryRelationshipObservationValueElement);
                if reasonCode is r4:CodeableConcept {
                    medication.reasonCode = [reasonCode];
                }
            }
        } else if entryRelationshipTypeCode is string && entryRelationshipTypeCode == "SUBJ" {
            xml entryRelationshipObservationActCodeElement = entryRelationshipElement/<v3:act>/<v3:code>;
            r4:CodeableConcept? additionalInstruction = mapCcdaCodingtoFhirCodeableConcept(entryRelationshipObservationActCodeElement);

            if additionalInstruction is r4:CodeableConcept {
                dosageInstruction = {
                    addtionalInstruction: [additionalInstruction]
                };
                medication.dosageInstruction = [dosageInstruction];
            }
        }
        return medication;
    }
    return ();
}

isolated function mapCcdatoFhirMedicationRequestStatus(xml codingElement) returns international401:MedicationRequestStatus {
    string|error? codeVal = codingElement.code;
    if codeVal is string {
        match codeVal {
            "active" => {
                return r4:CODE_STATUS_ACTIVE;
            }
            "aborted" => {
                return international401:CODE_STATUS_STOPPED;
            }
            "completed" => {
                return international401:CODE_STATUS_COMPLETED;
            }
            "nullified" => {
                return international401:CODE_STATUS_ENTERED_IN_ERROR;
            }
            "suspended" => {
                return international401:CODE_STATUS_ON_HOLD;
            }
        }
    }
    return international401:CODE_STATUS_ENTERED_IN_ERROR;
}
