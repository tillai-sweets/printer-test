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


/** This is an auto generated class representing the AddOnItem type in your schema. */
class AddOnItem extends amplify_core.Model {
  static const classType = const _AddOnItemModelType();
  final String id;
  final String? _code;
  final String? _name;
  final String? _unit;
  final String? _shortName;
  final double? _unitPrice;
  final UnitType? _unitType;
  final TrackInfo? _trackInfo;
  final String? _hsnCode;
  final bool? _active;
  final double? _unitPriceEggless;
  final AddOnType? _addOnType;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AddOnItemModelIdentifier get modelIdentifier {
      return AddOnItemModelIdentifier(
        id: id
      );
  }
  
  String? get code {
    return _code;
  }
  
  String? get name {
    return _name;
  }
  
  String? get unit {
    return _unit;
  }
  
  String? get shortName {
    return _shortName;
  }
  
  double? get unitPrice {
    return _unitPrice;
  }
  
  UnitType? get unitType {
    return _unitType;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  String? get hsnCode {
    return _hsnCode;
  }
  
  bool? get active {
    return _active;
  }
  
  double? get unitPriceEggless {
    return _unitPriceEggless;
  }
  
  AddOnType? get addOnType {
    return _addOnType;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const AddOnItem._internal({required this.id, code, name, unit, shortName, unitPrice, unitType, trackInfo, hsnCode, active, unitPriceEggless, addOnType, createdAt, updatedAt}): _code = code, _name = name, _unit = unit, _shortName = shortName, _unitPrice = unitPrice, _unitType = unitType, _trackInfo = trackInfo, _hsnCode = hsnCode, _active = active, _unitPriceEggless = unitPriceEggless, _addOnType = addOnType, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory AddOnItem({String? id, String? code, String? name, String? unit, String? shortName, double? unitPrice, UnitType? unitType, TrackInfo? trackInfo, String? hsnCode, bool? active, double? unitPriceEggless, AddOnType? addOnType}) {
    return AddOnItem._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      code: code,
      name: name,
      unit: unit,
      shortName: shortName,
      unitPrice: unitPrice,
      unitType: unitType,
      trackInfo: trackInfo,
      hsnCode: hsnCode,
      active: active,
      unitPriceEggless: unitPriceEggless,
      addOnType: addOnType);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddOnItem &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _unit == other._unit &&
      _shortName == other._shortName &&
      _unitPrice == other._unitPrice &&
      _unitType == other._unitType &&
      _trackInfo == other._trackInfo &&
      _hsnCode == other._hsnCode &&
      _active == other._active &&
      _unitPriceEggless == other._unitPriceEggless &&
      _addOnType == other._addOnType;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AddOnItem {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("unit=" + "$_unit" + ", ");
    buffer.write("shortName=" + "$_shortName" + ", ");
    buffer.write("unitPrice=" + (_unitPrice != null ? _unitPrice!.toString() : "null") + ", ");
    buffer.write("unitType=" + (_unitType != null ? amplify_core.enumToString(_unitType)! : "null") + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("hsnCode=" + "$_hsnCode" + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("unitPriceEggless=" + (_unitPriceEggless != null ? _unitPriceEggless!.toString() : "null") + ", ");
    buffer.write("addOnType=" + (_addOnType != null ? amplify_core.enumToString(_addOnType)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AddOnItem copyWith({String? code, String? name, String? unit, String? shortName, double? unitPrice, UnitType? unitType, TrackInfo? trackInfo, String? hsnCode, bool? active, double? unitPriceEggless, AddOnType? addOnType}) {
    return AddOnItem._internal(
      id: id,
      code: code ?? this.code,
      name: name ?? this.name,
      unit: unit ?? this.unit,
      shortName: shortName ?? this.shortName,
      unitPrice: unitPrice ?? this.unitPrice,
      unitType: unitType ?? this.unitType,
      trackInfo: trackInfo ?? this.trackInfo,
      hsnCode: hsnCode ?? this.hsnCode,
      active: active ?? this.active,
      unitPriceEggless: unitPriceEggless ?? this.unitPriceEggless,
      addOnType: addOnType ?? this.addOnType);
  }
  
  AddOnItem copyWithModelFieldValues({
    ModelFieldValue<String?>? code,
    ModelFieldValue<String?>? name,
    ModelFieldValue<String?>? unit,
    ModelFieldValue<String?>? shortName,
    ModelFieldValue<double?>? unitPrice,
    ModelFieldValue<UnitType?>? unitType,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<String?>? hsnCode,
    ModelFieldValue<bool?>? active,
    ModelFieldValue<double?>? unitPriceEggless,
    ModelFieldValue<AddOnType?>? addOnType
  }) {
    return AddOnItem._internal(
      id: id,
      code: code == null ? this.code : code.value,
      name: name == null ? this.name : name.value,
      unit: unit == null ? this.unit : unit.value,
      shortName: shortName == null ? this.shortName : shortName.value,
      unitPrice: unitPrice == null ? this.unitPrice : unitPrice.value,
      unitType: unitType == null ? this.unitType : unitType.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      hsnCode: hsnCode == null ? this.hsnCode : hsnCode.value,
      active: active == null ? this.active : active.value,
      unitPriceEggless: unitPriceEggless == null ? this.unitPriceEggless : unitPriceEggless.value,
      addOnType: addOnType == null ? this.addOnType : addOnType.value
    );
  }
  
  AddOnItem.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _unit = json['unit'],
      _shortName = json['shortName'],
      _unitPrice = (json['unitPrice'] as num?)?.toDouble(),
      _unitType = amplify_core.enumFromString<UnitType>(json['unitType'], UnitType.values),
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _hsnCode = json['hsnCode'],
      _active = json['active'],
      _unitPriceEggless = (json['unitPriceEggless'] as num?)?.toDouble(),
      _addOnType = amplify_core.enumFromString<AddOnType>(json['addOnType'], AddOnType.values),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'unit': _unit, 'shortName': _shortName, 'unitPrice': _unitPrice, 'unitType': amplify_core.enumToString(_unitType), 'trackInfo': _trackInfo?.toJson(), 'hsnCode': _hsnCode, 'active': _active, 'unitPriceEggless': _unitPriceEggless, 'addOnType': amplify_core.enumToString(_addOnType), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'code': _code,
    'name': _name,
    'unit': _unit,
    'shortName': _shortName,
    'unitPrice': _unitPrice,
    'unitType': _unitType,
    'trackInfo': _trackInfo,
    'hsnCode': _hsnCode,
    'active': _active,
    'unitPriceEggless': _unitPriceEggless,
    'addOnType': _addOnType,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<AddOnItemModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<AddOnItemModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CODE = amplify_core.QueryField(fieldName: "code");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final UNIT = amplify_core.QueryField(fieldName: "unit");
  static final SHORTNAME = amplify_core.QueryField(fieldName: "shortName");
  static final UNITPRICE = amplify_core.QueryField(fieldName: "unitPrice");
  static final UNITTYPE = amplify_core.QueryField(fieldName: "unitType");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final HSNCODE = amplify_core.QueryField(fieldName: "hsnCode");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static final UNITPRICEEGGLESS = amplify_core.QueryField(fieldName: "unitPriceEggless");
  static final ADDONTYPE = amplify_core.QueryField(fieldName: "addOnType");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AddOnItem";
    modelSchemaDefinition.pluralName = "AddOnItems";
    
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
      key: AddOnItem.CODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.UNIT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.SHORTNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.UNITPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.UNITTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.HSNCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.UNITPRICEEGGLESS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AddOnItem.ADDONTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
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

class _AddOnItemModelType extends amplify_core.ModelType<AddOnItem> {
  const _AddOnItemModelType();
  
  @override
  AddOnItem fromJson(Map<String, dynamic> jsonData) {
    return AddOnItem.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'AddOnItem';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [AddOnItem] in your schema.
 */
class AddOnItemModelIdentifier implements amplify_core.ModelIdentifier<AddOnItem> {
  final String id;

  /** Create an instance of AddOnItemModelIdentifier using [id] the primary key. */
  const AddOnItemModelIdentifier({
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
  String toString() => 'AddOnItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AddOnItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}