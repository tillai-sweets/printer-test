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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Flavour type in your schema. */
class Flavour extends amplify_core.Model {
  static const classType = const _FlavourModelType();
  final String id;
  final String? _name;
  final TrackInfo? _trackInfo;
  final List<ItemFlavour>? _items;
  final List<CategoryFlavour>? _categorys;
  final bool? _active;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FlavourModelIdentifier get modelIdentifier {
      return FlavourModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  List<ItemFlavour>? get items {
    return _items;
  }
  
  List<CategoryFlavour>? get categorys {
    return _categorys;
  }
  
  bool? get active {
    return _active;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Flavour._internal({required this.id, name, trackInfo, items, categorys, active, createdAt, updatedAt}): _name = name, _trackInfo = trackInfo, _items = items, _categorys = categorys, _active = active, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Flavour({String? id, String? name, TrackInfo? trackInfo, List<ItemFlavour>? items, List<CategoryFlavour>? categorys, bool? active}) {
    return Flavour._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      trackInfo: trackInfo,
      items: items != null ? List<ItemFlavour>.unmodifiable(items) : items,
      categorys: categorys != null ? List<CategoryFlavour>.unmodifiable(categorys) : categorys,
      active: active);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Flavour &&
      id == other.id &&
      _name == other._name &&
      _trackInfo == other._trackInfo &&
      DeepCollectionEquality().equals(_items, other._items) &&
      DeepCollectionEquality().equals(_categorys, other._categorys) &&
      _active == other._active;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Flavour {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Flavour copyWith({String? name, TrackInfo? trackInfo, List<ItemFlavour>? items, List<CategoryFlavour>? categorys, bool? active}) {
    return Flavour._internal(
      id: id,
      name: name ?? this.name,
      trackInfo: trackInfo ?? this.trackInfo,
      items: items ?? this.items,
      categorys: categorys ?? this.categorys,
      active: active ?? this.active);
  }
  
  Flavour copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<List<ItemFlavour>?>? items,
    ModelFieldValue<List<CategoryFlavour>?>? categorys,
    ModelFieldValue<bool?>? active
  }) {
    return Flavour._internal(
      id: id,
      name: name == null ? this.name : name.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      items: items == null ? this.items : items.value,
      categorys: categorys == null ? this.categorys : categorys.value,
      active: active == null ? this.active : active.value
    );
  }
  
  Flavour.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _items = json['items']  is Map
        ? (json['items']['items'] is List
          ? (json['items']['items'] as List)
              .where((e) => e != null)
              .map((e) => ItemFlavour.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['items'] is List
          ? (json['items'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => ItemFlavour.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _categorys = json['categorys']  is Map
        ? (json['categorys']['items'] is List
          ? (json['categorys']['items'] as List)
              .where((e) => e != null)
              .map((e) => CategoryFlavour.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['categorys'] is List
          ? (json['categorys'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => CategoryFlavour.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _active = json['active'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'trackInfo': _trackInfo?.toJson(), 'items': _items?.map((ItemFlavour? e) => e?.toJson()).toList(), 'categorys': _categorys?.map((CategoryFlavour? e) => e?.toJson()).toList(), 'active': _active, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'trackInfo': _trackInfo,
    'items': _items,
    'categorys': _categorys,
    'active': _active,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<FlavourModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<FlavourModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final ITEMS = amplify_core.QueryField(
    fieldName: "items",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ItemFlavour'));
  static final CATEGORYS = amplify_core.QueryField(
    fieldName: "categorys",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CategoryFlavour'));
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Flavour";
    modelSchemaDefinition.pluralName = "Flavours";
    
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
      key: Flavour.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Flavour.ITEMS,
      isRequired: false,
      ofModelName: 'ItemFlavour',
      associatedKey: ItemFlavour.FLAVOUR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Flavour.CATEGORYS,
      isRequired: false,
      ofModelName: 'CategoryFlavour',
      associatedKey: CategoryFlavour.FLAVOUR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Flavour.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
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

class _FlavourModelType extends amplify_core.ModelType<Flavour> {
  const _FlavourModelType();
  
  @override
  Flavour fromJson(Map<String, dynamic> jsonData) {
    return Flavour.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Flavour';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Flavour] in your schema.
 */
class FlavourModelIdentifier implements amplify_core.ModelIdentifier<Flavour> {
  final String id;

  /** Create an instance of FlavourModelIdentifier using [id] the primary key. */
  const FlavourModelIdentifier({
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
  String toString() => 'FlavourModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FlavourModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}