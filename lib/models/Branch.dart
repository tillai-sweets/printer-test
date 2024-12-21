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


/** This is an auto generated class representing the Branch type in your schema. */
class Branch extends amplify_core.Model {
  static const classType = const _BranchModelType();
  final String id;
  final String? _code;
  final String? _name;
  final Address? _address;
  final TrackInfo? _trackInfo;
  final String? _shortName;
  final bool? _active;
  final String? _contactNo;
  final String? _contactMobileNo;
  final String? _representative;
  final String? _fssai;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  BranchModelIdentifier get modelIdentifier {
      return BranchModelIdentifier(
        id: id
      );
  }
  
  String? get code {
    return _code;
  }
  
  String? get name {
    return _name;
  }
  
  Address? get address {
    return _address;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  String? get shortName {
    return _shortName;
  }
  
  bool? get active {
    return _active;
  }
  
  String? get contactNo {
    return _contactNo;
  }
  
  String? get contactMobileNo {
    return _contactMobileNo;
  }
  
  String? get representative {
    return _representative;
  }
  
  String? get fssai {
    return _fssai;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Branch._internal({required this.id, code, name, address, trackInfo, shortName, active, contactNo, contactMobileNo, representative, fssai, createdAt, updatedAt}): _code = code, _name = name, _address = address, _trackInfo = trackInfo, _shortName = shortName, _active = active, _contactNo = contactNo, _contactMobileNo = contactMobileNo, _representative = representative, _fssai = fssai, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Branch({String? id, String? code, String? name, Address? address, TrackInfo? trackInfo, String? shortName, bool? active, String? contactNo, String? contactMobileNo, String? representative, String? fssai}) {
    return Branch._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      code: code,
      name: name,
      address: address,
      trackInfo: trackInfo,
      shortName: shortName,
      active: active,
      contactNo: contactNo,
      contactMobileNo: contactMobileNo,
      representative: representative,
      fssai: fssai);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Branch &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _address == other._address &&
      _trackInfo == other._trackInfo &&
      _shortName == other._shortName &&
      _active == other._active &&
      _contactNo == other._contactNo &&
      _contactMobileNo == other._contactMobileNo &&
      _representative == other._representative &&
      _fssai == other._fssai;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Branch {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("address=" + (_address != null ? _address!.toString() : "null") + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("shortName=" + "$_shortName" + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("contactNo=" + "$_contactNo" + ", ");
    buffer.write("contactMobileNo=" + "$_contactMobileNo" + ", ");
    buffer.write("representative=" + "$_representative" + ", ");
    buffer.write("fssai=" + "$_fssai" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Branch copyWith({String? code, String? name, Address? address, TrackInfo? trackInfo, String? shortName, bool? active, String? contactNo, String? contactMobileNo, String? representative, String? fssai}) {
    return Branch._internal(
      id: id,
      code: code ?? this.code,
      name: name ?? this.name,
      address: address ?? this.address,
      trackInfo: trackInfo ?? this.trackInfo,
      shortName: shortName ?? this.shortName,
      active: active ?? this.active,
      contactNo: contactNo ?? this.contactNo,
      contactMobileNo: contactMobileNo ?? this.contactMobileNo,
      representative: representative ?? this.representative,
      fssai: fssai ?? this.fssai);
  }
  
  Branch copyWithModelFieldValues({
    ModelFieldValue<String?>? code,
    ModelFieldValue<String?>? name,
    ModelFieldValue<Address?>? address,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<String?>? shortName,
    ModelFieldValue<bool?>? active,
    ModelFieldValue<String?>? contactNo,
    ModelFieldValue<String?>? contactMobileNo,
    ModelFieldValue<String?>? representative,
    ModelFieldValue<String?>? fssai
  }) {
    return Branch._internal(
      id: id,
      code: code == null ? this.code : code.value,
      name: name == null ? this.name : name.value,
      address: address == null ? this.address : address.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      shortName: shortName == null ? this.shortName : shortName.value,
      active: active == null ? this.active : active.value,
      contactNo: contactNo == null ? this.contactNo : contactNo.value,
      contactMobileNo: contactMobileNo == null ? this.contactMobileNo : contactMobileNo.value,
      representative: representative == null ? this.representative : representative.value,
      fssai: fssai == null ? this.fssai : fssai.value
    );
  }
  
  Branch.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _address = json['address'] != null
          ? json['address']['serializedData'] != null
              ? Address.fromJson(new Map<String, dynamic>.from(json['address']['serializedData']))
              : Address.fromJson(new Map<String, dynamic>.from(json['address']))
        : null,
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _shortName = json['shortName'],
      _active = json['active'],
      _contactNo = json['contactNo'],
      _contactMobileNo = json['contactMobileNo'],
      _representative = json['representative'],
      _fssai = json['fssai'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'address': _address?.toJson(), 'trackInfo': _trackInfo?.toJson(), 'shortName': _shortName, 'active': _active, 'contactNo': _contactNo, 'contactMobileNo': _contactMobileNo, 'representative': _representative, 'fssai': _fssai, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'code': _code,
    'name': _name,
    'address': _address,
    'trackInfo': _trackInfo,
    'shortName': _shortName,
    'active': _active,
    'contactNo': _contactNo,
    'contactMobileNo': _contactMobileNo,
    'representative': _representative,
    'fssai': _fssai,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<BranchModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<BranchModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CODE = amplify_core.QueryField(fieldName: "code");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final SHORTNAME = amplify_core.QueryField(fieldName: "shortName");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static final CONTACTNO = amplify_core.QueryField(fieldName: "contactNo");
  static final CONTACTMOBILENO = amplify_core.QueryField(fieldName: "contactMobileNo");
  static final REPRESENTATIVE = amplify_core.QueryField(fieldName: "representative");
  static final FSSAI = amplify_core.QueryField(fieldName: "fssai");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Branch";
    modelSchemaDefinition.pluralName = "Branches";
    
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
      key: Branch.CODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'address',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Address')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.SHORTNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.CONTACTNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.CONTACTMOBILENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.REPRESENTATIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Branch.FSSAI,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _BranchModelType extends amplify_core.ModelType<Branch> {
  const _BranchModelType();
  
  @override
  Branch fromJson(Map<String, dynamic> jsonData) {
    return Branch.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Branch';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Branch] in your schema.
 */
class BranchModelIdentifier implements amplify_core.ModelIdentifier<Branch> {
  final String id;

  /** Create an instance of BranchModelIdentifier using [id] the primary key. */
  const BranchModelIdentifier({
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
  String toString() => 'BranchModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is BranchModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}