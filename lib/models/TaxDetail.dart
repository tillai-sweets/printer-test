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


/** This is an auto generated class representing the TaxDetail type in your schema. */
class TaxDetail extends amplify_core.Model {
  static const classType = const _TaxDetailModelType();
  final String id;
  final String? _hsnCode;
  final double? _cgst;
  final double? _utgst;
  final double? _gst;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TaxDetailModelIdentifier get modelIdentifier {
      return TaxDetailModelIdentifier(
        id: id
      );
  }
  
  String? get hsnCode {
    return _hsnCode;
  }
  
  double? get cgst {
    return _cgst;
  }
  
  double? get utgst {
    return _utgst;
  }
  
  double? get gst {
    return _gst;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const TaxDetail._internal({required this.id, hsnCode, cgst, utgst, gst, createdAt, updatedAt}): _hsnCode = hsnCode, _cgst = cgst, _utgst = utgst, _gst = gst, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory TaxDetail({String? id, String? hsnCode, double? cgst, double? utgst, double? gst}) {
    return TaxDetail._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      hsnCode: hsnCode,
      cgst: cgst,
      utgst: utgst,
      gst: gst);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxDetail &&
      id == other.id &&
      _hsnCode == other._hsnCode &&
      _cgst == other._cgst &&
      _utgst == other._utgst &&
      _gst == other._gst;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TaxDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("hsnCode=" + "$_hsnCode" + ", ");
    buffer.write("cgst=" + (_cgst != null ? _cgst!.toString() : "null") + ", ");
    buffer.write("utgst=" + (_utgst != null ? _utgst!.toString() : "null") + ", ");
    buffer.write("gst=" + (_gst != null ? _gst!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TaxDetail copyWith({String? hsnCode, double? cgst, double? utgst, double? gst}) {
    return TaxDetail._internal(
      id: id,
      hsnCode: hsnCode ?? this.hsnCode,
      cgst: cgst ?? this.cgst,
      utgst: utgst ?? this.utgst,
      gst: gst ?? this.gst);
  }
  
  TaxDetail copyWithModelFieldValues({
    ModelFieldValue<String?>? hsnCode,
    ModelFieldValue<double?>? cgst,
    ModelFieldValue<double?>? utgst,
    ModelFieldValue<double?>? gst
  }) {
    return TaxDetail._internal(
      id: id,
      hsnCode: hsnCode == null ? this.hsnCode : hsnCode.value,
      cgst: cgst == null ? this.cgst : cgst.value,
      utgst: utgst == null ? this.utgst : utgst.value,
      gst: gst == null ? this.gst : gst.value
    );
  }
  
  TaxDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _hsnCode = json['hsnCode'],
      _cgst = (json['cgst'] as num?)?.toDouble(),
      _utgst = (json['utgst'] as num?)?.toDouble(),
      _gst = (json['gst'] as num?)?.toDouble(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'hsnCode': _hsnCode, 'cgst': _cgst, 'utgst': _utgst, 'gst': _gst, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'hsnCode': _hsnCode,
    'cgst': _cgst,
    'utgst': _utgst,
    'gst': _gst,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<TaxDetailModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TaxDetailModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final HSNCODE = amplify_core.QueryField(fieldName: "hsnCode");
  static final CGST = amplify_core.QueryField(fieldName: "cgst");
  static final UTGST = amplify_core.QueryField(fieldName: "utgst");
  static final GST = amplify_core.QueryField(fieldName: "gst");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TaxDetail";
    modelSchemaDefinition.pluralName = "TaxDetails";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TaxDetail.HSNCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TaxDetail.CGST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TaxDetail.UTGST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: TaxDetail.GST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _TaxDetailModelType extends amplify_core.ModelType<TaxDetail> {
  const _TaxDetailModelType();
  
  @override
  TaxDetail fromJson(Map<String, dynamic> jsonData) {
    return TaxDetail.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'TaxDetail';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [TaxDetail] in your schema.
 */
class TaxDetailModelIdentifier implements amplify_core.ModelIdentifier<TaxDetail> {
  final String id;

  /** Create an instance of TaxDetailModelIdentifier using [id] the primary key. */
  const TaxDetailModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'TaxDetailModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TaxDetailModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}