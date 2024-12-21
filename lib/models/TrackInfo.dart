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


/** This is an auto generated class representing the TrackInfo type in your schema. */
class TrackInfo {
  final String? _createdBy;
  final amplify_core.TemporalDateTime? _createdOn;
  final String? _updatedBy;
  final amplify_core.TemporalDateTime? _updatedOn;

  String? get createdBy {
    return _createdBy;
  }
  
  amplify_core.TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  String? get updatedBy {
    return _updatedBy;
  }
  
  amplify_core.TemporalDateTime? get updatedOn {
    return _updatedOn;
  }
  
  const TrackInfo._internal({createdBy, createdOn, updatedBy, updatedOn}): _createdBy = createdBy, _createdOn = createdOn, _updatedBy = updatedBy, _updatedOn = updatedOn;
  
  factory TrackInfo({String? createdBy, amplify_core.TemporalDateTime? createdOn, String? updatedBy, amplify_core.TemporalDateTime? updatedOn}) {
    return TrackInfo._internal(
      createdBy: createdBy,
      createdOn: createdOn,
      updatedBy: updatedBy,
      updatedOn: updatedOn);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackInfo &&
      _createdBy == other._createdBy &&
      _createdOn == other._createdOn &&
      _updatedBy == other._updatedBy &&
      _updatedOn == other._updatedOn;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TrackInfo {");
    buffer.write("createdBy=" + "$_createdBy" + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("updatedBy=" + "$_updatedBy" + ", ");
    buffer.write("updatedOn=" + (_updatedOn != null ? _updatedOn!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TrackInfo copyWith({String? createdBy, amplify_core.TemporalDateTime? createdOn, String? updatedBy, amplify_core.TemporalDateTime? updatedOn}) {
    return TrackInfo._internal(
      createdBy: createdBy ?? this.createdBy,
      createdOn: createdOn ?? this.createdOn,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedOn: updatedOn ?? this.updatedOn);
  }
  
  TrackInfo copyWithModelFieldValues({
    ModelFieldValue<String?>? createdBy,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdOn,
    ModelFieldValue<String?>? updatedBy,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedOn
  }) {
    return TrackInfo._internal(
      createdBy: createdBy == null ? this.createdBy : createdBy.value,
      createdOn: createdOn == null ? this.createdOn : createdOn.value,
      updatedBy: updatedBy == null ? this.updatedBy : updatedBy.value,
      updatedOn: updatedOn == null ? this.updatedOn : updatedOn.value
    );
  }
  
  TrackInfo.fromJson(Map<String, dynamic> json)  
    : _createdBy = json['createdBy'],
      _createdOn = json['createdOn'] != null ? amplify_core.TemporalDateTime.fromString(json['createdOn']) : null,
      _updatedBy = json['updatedBy'],
      _updatedOn = json['updatedOn'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedOn']) : null;
  
  Map<String, dynamic> toJson() => {
    'createdBy': _createdBy, 'createdOn': _createdOn?.format(), 'updatedBy': _updatedBy, 'updatedOn': _updatedOn?.format()
  };
  
  Map<String, Object?> toMap() => {
    'createdBy': _createdBy,
    'createdOn': _createdOn,
    'updatedBy': _updatedBy,
    'updatedOn': _updatedOn
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TrackInfo";
    modelSchemaDefinition.pluralName = "TrackInfos";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'createdBy',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'createdOn',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'updatedBy',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'updatedOn',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}