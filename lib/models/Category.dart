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


/** This is an auto generated class representing the Category type in your schema. */
class Category extends amplify_core.Model {
  static const classType = const _CategoryModelType();
  final String id;
  final String? _code;
  final String? _name;
  final bool? _hasHalfKg;
  final double? _weightRangeFrom;
  final double? _weightRangeTo;
  final TrackInfo? _trackInfo;
  final List<CategoryFlavour>? _flavours;
  final bool? _active;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CategoryModelIdentifier get modelIdentifier {
      return CategoryModelIdentifier(
        id: id
      );
  }
  
  String? get code {
    return _code;
  }
  
  String? get name {
    return _name;
  }
  
  bool? get hasHalfKg {
    return _hasHalfKg;
  }
  
  double? get weightRangeFrom {
    return _weightRangeFrom;
  }
  
  double? get weightRangeTo {
    return _weightRangeTo;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  List<CategoryFlavour>? get flavours {
    return _flavours;
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
  
  const Category._internal({required this.id, code, name, hasHalfKg, weightRangeFrom, weightRangeTo, trackInfo, flavours, active, createdAt, updatedAt}): _code = code, _name = name, _hasHalfKg = hasHalfKg, _weightRangeFrom = weightRangeFrom, _weightRangeTo = weightRangeTo, _trackInfo = trackInfo, _flavours = flavours, _active = active, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Category({String? id, String? code, String? name, bool? hasHalfKg, double? weightRangeFrom, double? weightRangeTo, TrackInfo? trackInfo, List<CategoryFlavour>? flavours, bool? active}) {
    return Category._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      code: code,
      name: name,
      hasHalfKg: hasHalfKg,
      weightRangeFrom: weightRangeFrom,
      weightRangeTo: weightRangeTo,
      trackInfo: trackInfo,
      flavours: flavours != null ? List<CategoryFlavour>.unmodifiable(flavours) : flavours,
      active: active);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _hasHalfKg == other._hasHalfKg &&
      _weightRangeFrom == other._weightRangeFrom &&
      _weightRangeTo == other._weightRangeTo &&
      _trackInfo == other._trackInfo &&
      DeepCollectionEquality().equals(_flavours, other._flavours) &&
      _active == other._active;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Category {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasHalfKg=" + (_hasHalfKg != null ? _hasHalfKg!.toString() : "null") + ", ");
    buffer.write("weightRangeFrom=" + (_weightRangeFrom != null ? _weightRangeFrom!.toString() : "null") + ", ");
    buffer.write("weightRangeTo=" + (_weightRangeTo != null ? _weightRangeTo!.toString() : "null") + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Category copyWith({String? code, String? name, bool? hasHalfKg, double? weightRangeFrom, double? weightRangeTo, TrackInfo? trackInfo, List<CategoryFlavour>? flavours, bool? active}) {
    return Category._internal(
      id: id,
      code: code ?? this.code,
      name: name ?? this.name,
      hasHalfKg: hasHalfKg ?? this.hasHalfKg,
      weightRangeFrom: weightRangeFrom ?? this.weightRangeFrom,
      weightRangeTo: weightRangeTo ?? this.weightRangeTo,
      trackInfo: trackInfo ?? this.trackInfo,
      flavours: flavours ?? this.flavours,
      active: active ?? this.active);
  }
  
  Category copyWithModelFieldValues({
    ModelFieldValue<String?>? code,
    ModelFieldValue<String?>? name,
    ModelFieldValue<bool?>? hasHalfKg,
    ModelFieldValue<double?>? weightRangeFrom,
    ModelFieldValue<double?>? weightRangeTo,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<List<CategoryFlavour>?>? flavours,
    ModelFieldValue<bool?>? active
  }) {
    return Category._internal(
      id: id,
      code: code == null ? this.code : code.value,
      name: name == null ? this.name : name.value,
      hasHalfKg: hasHalfKg == null ? this.hasHalfKg : hasHalfKg.value,
      weightRangeFrom: weightRangeFrom == null ? this.weightRangeFrom : weightRangeFrom.value,
      weightRangeTo: weightRangeTo == null ? this.weightRangeTo : weightRangeTo.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      flavours: flavours == null ? this.flavours : flavours.value,
      active: active == null ? this.active : active.value
    );
  }
  
  Category.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _hasHalfKg = json['hasHalfKg'],
      _weightRangeFrom = (json['weightRangeFrom'] as num?)?.toDouble(),
      _weightRangeTo = (json['weightRangeTo'] as num?)?.toDouble(),
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _flavours = json['flavours']  is Map
        ? (json['flavours']['items'] is List
          ? (json['flavours']['items'] as List)
              .where((e) => e != null)
              .map((e) => CategoryFlavour.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['flavours'] is List
          ? (json['flavours'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => CategoryFlavour.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _active = json['active'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'hasHalfKg': _hasHalfKg, 'weightRangeFrom': _weightRangeFrom, 'weightRangeTo': _weightRangeTo, 'trackInfo': _trackInfo?.toJson(), 'flavours': _flavours?.map((CategoryFlavour? e) => e?.toJson()).toList(), 'active': _active, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'code': _code,
    'name': _name,
    'hasHalfKg': _hasHalfKg,
    'weightRangeFrom': _weightRangeFrom,
    'weightRangeTo': _weightRangeTo,
    'trackInfo': _trackInfo,
    'flavours': _flavours,
    'active': _active,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CategoryModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CategoryModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CODE = amplify_core.QueryField(fieldName: "code");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final HASHALFKG = amplify_core.QueryField(fieldName: "hasHalfKg");
  static final WEIGHTRANGEFROM = amplify_core.QueryField(fieldName: "weightRangeFrom");
  static final WEIGHTRANGETO = amplify_core.QueryField(fieldName: "weightRangeTo");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final FLAVOURS = amplify_core.QueryField(
    fieldName: "flavours",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CategoryFlavour'));
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Category";
    modelSchemaDefinition.pluralName = "Categories";
    
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
      key: Category.CODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Category.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Category.HASHALFKG,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Category.WEIGHTRANGEFROM,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Category.WEIGHTRANGETO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Category.FLAVOURS,
      isRequired: false,
      ofModelName: 'CategoryFlavour',
      associatedKey: CategoryFlavour.CATEGORY
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Category.ACTIVE,
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

class _CategoryModelType extends amplify_core.ModelType<Category> {
  const _CategoryModelType();
  
  @override
  Category fromJson(Map<String, dynamic> jsonData) {
    return Category.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Category';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Category] in your schema.
 */
class CategoryModelIdentifier implements amplify_core.ModelIdentifier<Category> {
  final String id;

  /** Create an instance of CategoryModelIdentifier using [id] the primary key. */
  const CategoryModelIdentifier({
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
  String toString() => 'CategoryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CategoryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}