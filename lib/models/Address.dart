/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Address type in your schema. */
class Address {
  final String? _building;
  final String? _adrressLine1;
  final String? _adrressLine2;
  final String? _adrressLine3;
  final String? _state;
  final String? _pincode;
  final String? _countryCode;
  final String? _country;
  final String? _landmark;

  String? get building {
    return _building;
  }
  
  String? get adrressLine1 {
    return _adrressLine1;
  }
  
  String? get adrressLine2 {
    return _adrressLine2;
  }
  
  String? get adrressLine3 {
    return _adrressLine3;
  }
  
  String? get state {
    return _state;
  }
  
  String? get pincode {
    return _pincode;
  }
  
  String? get countryCode {
    return _countryCode;
  }
  
  String? get country {
    return _country;
  }
  
  String? get landmark {
    return _landmark;
  }
  
  const Address._internal({building, adrressLine1, adrressLine2, adrressLine3, state, pincode, countryCode, country, landmark}): _building = building, _adrressLine1 = adrressLine1, _adrressLine2 = adrressLine2, _adrressLine3 = adrressLine3, _state = state, _pincode = pincode, _countryCode = countryCode, _country = country, _landmark = landmark;
  
  factory Address({String? building, String? adrressLine1, String? adrressLine2, String? adrressLine3, String? state, String? pincode, String? countryCode, String? country, String? landmark}) {
    return Address._internal(
      building: building,
      adrressLine1: adrressLine1,
      adrressLine2: adrressLine2,
      adrressLine3: adrressLine3,
      state: state,
      pincode: pincode,
      countryCode: countryCode,
      country: country,
      landmark: landmark);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
      _building == other._building &&
      _adrressLine1 == other._adrressLine1 &&
      _adrressLine2 == other._adrressLine2 &&
      _adrressLine3 == other._adrressLine3 &&
      _state == other._state &&
      _pincode == other._pincode &&
      _countryCode == other._countryCode &&
      _country == other._country &&
      _landmark == other._landmark;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Address {");
    buffer.write("building=" + "$_building" + ", ");
    buffer.write("adrressLine1=" + "$_adrressLine1" + ", ");
    buffer.write("adrressLine2=" + "$_adrressLine2" + ", ");
    buffer.write("adrressLine3=" + "$_adrressLine3" + ", ");
    buffer.write("state=" + "$_state" + ", ");
    buffer.write("pincode=" + "$_pincode" + ", ");
    buffer.write("countryCode=" + "$_countryCode" + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("landmark=" + "$_landmark");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Address copyWith({String? building, String? adrressLine1, String? adrressLine2, String? adrressLine3, String? state, String? pincode, String? countryCode, String? country, String? landmark}) {
    return Address._internal(
      building: building ?? this.building,
      adrressLine1: adrressLine1 ?? this.adrressLine1,
      adrressLine2: adrressLine2 ?? this.adrressLine2,
      adrressLine3: adrressLine3 ?? this.adrressLine3,
      state: state ?? this.state,
      pincode: pincode ?? this.pincode,
      countryCode: countryCode ?? this.countryCode,
      country: country ?? this.country,
      landmark: landmark ?? this.landmark);
  }
  
  Address copyWithModelFieldValues({
    ModelFieldValue<String?>? building,
    ModelFieldValue<String?>? adrressLine1,
    ModelFieldValue<String?>? adrressLine2,
    ModelFieldValue<String?>? adrressLine3,
    ModelFieldValue<String?>? state,
    ModelFieldValue<String?>? pincode,
    ModelFieldValue<String?>? countryCode,
    ModelFieldValue<String?>? country,
    ModelFieldValue<String?>? landmark
  }) {
    return Address._internal(
      building: building == null ? this.building : building.value,
      adrressLine1: adrressLine1 == null ? this.adrressLine1 : adrressLine1.value,
      adrressLine2: adrressLine2 == null ? this.adrressLine2 : adrressLine2.value,
      adrressLine3: adrressLine3 == null ? this.adrressLine3 : adrressLine3.value,
      state: state == null ? this.state : state.value,
      pincode: pincode == null ? this.pincode : pincode.value,
      countryCode: countryCode == null ? this.countryCode : countryCode.value,
      country: country == null ? this.country : country.value,
      landmark: landmark == null ? this.landmark : landmark.value
    );
  }
  
  Address.fromJson(Map<String, dynamic> json)  
    : _building = json['building'],
      _adrressLine1 = json['adrressLine1'],
      _adrressLine2 = json['adrressLine2'],
      _adrressLine3 = json['adrressLine3'],
      _state = json['state'],
      _pincode = json['pincode'],
      _countryCode = json['countryCode'],
      _country = json['country'],
      _landmark = json['landmark'];
  
  Map<String, dynamic> toJson() => {
    'building': _building, 'adrressLine1': _adrressLine1, 'adrressLine2': _adrressLine2, 'adrressLine3': _adrressLine3, 'state': _state, 'pincode': _pincode, 'countryCode': _countryCode, 'country': _country, 'landmark': _landmark
  };
  
  Map<String, Object?> toMap() => {
    'building': _building,
    'adrressLine1': _adrressLine1,
    'adrressLine2': _adrressLine2,
    'adrressLine3': _adrressLine3,
    'state': _state,
    'pincode': _pincode,
    'countryCode': _countryCode,
    'country': _country,
    'landmark': _landmark
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Address";
    modelSchemaDefinition.pluralName = "Addresses";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'building',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'adrressLine1',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'adrressLine2',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'adrressLine3',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'state',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'pincode',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'countryCode',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'country',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'landmark',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}