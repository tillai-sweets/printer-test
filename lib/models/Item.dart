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


/** This is an auto generated class representing the Item type in your schema. */
class Item extends amplify_core.Model {
  static const classType = const _ItemModelType();
  final String id;
  final String? _code;
  final String? _name;
  final bool? _hasHalfKg;
  final double? _halfKgPrice;
  final double? _perKgPrice;
  final double? _halfKgEgglessPrice;
  final double? _perKgEgglessPrice;
  final String? _remarks;
  final TrackInfo? _trackInfo;
  final List<ItemFlavour>? _flavours;
  final Category? _category;
  final String? _hsnCode;
  final bool? _active;
  final String? _modelNo;
  final String? _imageKey;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _itemCategoryId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ItemModelIdentifier get modelIdentifier {
      return ItemModelIdentifier(
        id: id
      );
  }
  
  String get code {
    try {
      return _code!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get name {
    return _name;
  }
  
  bool? get hasHalfKg {
    return _hasHalfKg;
  }
  
  double? get halfKgPrice {
    return _halfKgPrice;
  }
  
  double? get perKgPrice {
    return _perKgPrice;
  }
  
  double? get halfKgEgglessPrice {
    return _halfKgEgglessPrice;
  }
  
  double? get perKgEgglessPrice {
    return _perKgEgglessPrice;
  }
  
  String? get remarks {
    return _remarks;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  List<ItemFlavour>? get flavours {
    return _flavours;
  }
  
  Category? get category {
    return _category;
  }
  
  String? get hsnCode {
    return _hsnCode;
  }
  
  bool? get active {
    return _active;
  }
  
  String? get modelNo {
    return _modelNo;
  }
  
  String? get imageKey {
    return _imageKey;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get itemCategoryId {
    return _itemCategoryId;
  }
  
  const Item._internal({required this.id, required code, name, hasHalfKg, halfKgPrice, perKgPrice, halfKgEgglessPrice, perKgEgglessPrice, remarks, trackInfo, flavours, category, hsnCode, active, modelNo, imageKey, createdAt, updatedAt, itemCategoryId}): _code = code, _name = name, _hasHalfKg = hasHalfKg, _halfKgPrice = halfKgPrice, _perKgPrice = perKgPrice, _halfKgEgglessPrice = halfKgEgglessPrice, _perKgEgglessPrice = perKgEgglessPrice, _remarks = remarks, _trackInfo = trackInfo, _flavours = flavours, _category = category, _hsnCode = hsnCode, _active = active, _modelNo = modelNo, _imageKey = imageKey, _createdAt = createdAt, _updatedAt = updatedAt, _itemCategoryId = itemCategoryId;
  
  factory Item({String? id, required String code, String? name, bool? hasHalfKg, double? halfKgPrice, double? perKgPrice, double? halfKgEgglessPrice, double? perKgEgglessPrice, String? remarks, TrackInfo? trackInfo, List<ItemFlavour>? flavours, Category? category, String? hsnCode, bool? active, String? modelNo, String? imageKey, String? itemCategoryId}) {
    return Item._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      code: code,
      name: name,
      hasHalfKg: hasHalfKg,
      halfKgPrice: halfKgPrice,
      perKgPrice: perKgPrice,
      halfKgEgglessPrice: halfKgEgglessPrice,
      perKgEgglessPrice: perKgEgglessPrice,
      remarks: remarks,
      trackInfo: trackInfo,
      flavours: flavours != null ? List<ItemFlavour>.unmodifiable(flavours) : flavours,
      category: category,
      hsnCode: hsnCode,
      active: active,
      modelNo: modelNo,
      imageKey: imageKey,
      itemCategoryId: itemCategoryId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Item &&
      id == other.id &&
      _code == other._code &&
      _name == other._name &&
      _hasHalfKg == other._hasHalfKg &&
      _halfKgPrice == other._halfKgPrice &&
      _perKgPrice == other._perKgPrice &&
      _halfKgEgglessPrice == other._halfKgEgglessPrice &&
      _perKgEgglessPrice == other._perKgEgglessPrice &&
      _remarks == other._remarks &&
      _trackInfo == other._trackInfo &&
      DeepCollectionEquality().equals(_flavours, other._flavours) &&
      _category == other._category &&
      _hsnCode == other._hsnCode &&
      _active == other._active &&
      _modelNo == other._modelNo &&
      _imageKey == other._imageKey &&
      _itemCategoryId == other._itemCategoryId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Item {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("code=" + "$_code" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("hasHalfKg=" + (_hasHalfKg != null ? _hasHalfKg!.toString() : "null") + ", ");
    buffer.write("halfKgPrice=" + (_halfKgPrice != null ? _halfKgPrice!.toString() : "null") + ", ");
    buffer.write("perKgPrice=" + (_perKgPrice != null ? _perKgPrice!.toString() : "null") + ", ");
    buffer.write("halfKgEgglessPrice=" + (_halfKgEgglessPrice != null ? _halfKgEgglessPrice!.toString() : "null") + ", ");
    buffer.write("perKgEgglessPrice=" + (_perKgEgglessPrice != null ? _perKgEgglessPrice!.toString() : "null") + ", ");
    buffer.write("remarks=" + "$_remarks" + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("hsnCode=" + "$_hsnCode" + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("modelNo=" + "$_modelNo" + ", ");
    buffer.write("imageKey=" + "$_imageKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("itemCategoryId=" + "$_itemCategoryId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Item copyWith({String? code, String? name, bool? hasHalfKg, double? halfKgPrice, double? perKgPrice, double? halfKgEgglessPrice, double? perKgEgglessPrice, String? remarks, TrackInfo? trackInfo, List<ItemFlavour>? flavours, Category? category, String? hsnCode, bool? active, String? modelNo, String? imageKey, String? itemCategoryId}) {
    return Item._internal(
      id: id,
      code: code ?? this.code,
      name: name ?? this.name,
      hasHalfKg: hasHalfKg ?? this.hasHalfKg,
      halfKgPrice: halfKgPrice ?? this.halfKgPrice,
      perKgPrice: perKgPrice ?? this.perKgPrice,
      halfKgEgglessPrice: halfKgEgglessPrice ?? this.halfKgEgglessPrice,
      perKgEgglessPrice: perKgEgglessPrice ?? this.perKgEgglessPrice,
      remarks: remarks ?? this.remarks,
      trackInfo: trackInfo ?? this.trackInfo,
      flavours: flavours ?? this.flavours,
      category: category ?? this.category,
      hsnCode: hsnCode ?? this.hsnCode,
      active: active ?? this.active,
      modelNo: modelNo ?? this.modelNo,
      imageKey: imageKey ?? this.imageKey,
      itemCategoryId: itemCategoryId ?? this.itemCategoryId);
  }
  
  Item copyWithModelFieldValues({
    ModelFieldValue<String>? code,
    ModelFieldValue<String?>? name,
    ModelFieldValue<bool?>? hasHalfKg,
    ModelFieldValue<double?>? halfKgPrice,
    ModelFieldValue<double?>? perKgPrice,
    ModelFieldValue<double?>? halfKgEgglessPrice,
    ModelFieldValue<double?>? perKgEgglessPrice,
    ModelFieldValue<String?>? remarks,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<List<ItemFlavour>?>? flavours,
    ModelFieldValue<Category?>? category,
    ModelFieldValue<String?>? hsnCode,
    ModelFieldValue<bool?>? active,
    ModelFieldValue<String?>? modelNo,
    ModelFieldValue<String?>? imageKey,
    ModelFieldValue<String?>? itemCategoryId
  }) {
    return Item._internal(
      id: id,
      code: code == null ? this.code : code.value,
      name: name == null ? this.name : name.value,
      hasHalfKg: hasHalfKg == null ? this.hasHalfKg : hasHalfKg.value,
      halfKgPrice: halfKgPrice == null ? this.halfKgPrice : halfKgPrice.value,
      perKgPrice: perKgPrice == null ? this.perKgPrice : perKgPrice.value,
      halfKgEgglessPrice: halfKgEgglessPrice == null ? this.halfKgEgglessPrice : halfKgEgglessPrice.value,
      perKgEgglessPrice: perKgEgglessPrice == null ? this.perKgEgglessPrice : perKgEgglessPrice.value,
      remarks: remarks == null ? this.remarks : remarks.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      flavours: flavours == null ? this.flavours : flavours.value,
      category: category == null ? this.category : category.value,
      hsnCode: hsnCode == null ? this.hsnCode : hsnCode.value,
      active: active == null ? this.active : active.value,
      modelNo: modelNo == null ? this.modelNo : modelNo.value,
      imageKey: imageKey == null ? this.imageKey : imageKey.value,
      itemCategoryId: itemCategoryId == null ? this.itemCategoryId : itemCategoryId.value
    );
  }
  
  Item.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _code = json['code'],
      _name = json['name'],
      _hasHalfKg = json['hasHalfKg'],
      _halfKgPrice = (json['halfKgPrice'] as num?)?.toDouble(),
      _perKgPrice = (json['perKgPrice'] as num?)?.toDouble(),
      _halfKgEgglessPrice = (json['halfKgEgglessPrice'] as num?)?.toDouble(),
      _perKgEgglessPrice = (json['perKgEgglessPrice'] as num?)?.toDouble(),
      _remarks = json['remarks'],
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _flavours = json['flavours']  is Map
        ? (json['flavours']['items'] is List
          ? (json['flavours']['items'] as List)
              .where((e) => e != null)
              .map((e) => ItemFlavour.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['flavours'] is List
          ? (json['flavours'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => ItemFlavour.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _category = json['category'] != null
        ? json['category']['serializedData'] != null
          ? Category.fromJson(new Map<String, dynamic>.from(json['category']['serializedData']))
          : Category.fromJson(new Map<String, dynamic>.from(json['category']))
        : null,
      _hsnCode = json['hsnCode'],
      _active = json['active'],
      _modelNo = json['modelNo'],
      _imageKey = json['imageKey'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _itemCategoryId = json['itemCategoryId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'code': _code, 'name': _name, 'hasHalfKg': _hasHalfKg, 'halfKgPrice': _halfKgPrice, 'perKgPrice': _perKgPrice, 'halfKgEgglessPrice': _halfKgEgglessPrice, 'perKgEgglessPrice': _perKgEgglessPrice, 'remarks': _remarks, 'trackInfo': _trackInfo?.toJson(), 'flavours': _flavours?.map((ItemFlavour? e) => e?.toJson()).toList(), 'category': _category?.toJson(), 'hsnCode': _hsnCode, 'active': _active, 'modelNo': _modelNo, 'imageKey': _imageKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'itemCategoryId': _itemCategoryId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'code': _code,
    'name': _name,
    'hasHalfKg': _hasHalfKg,
    'halfKgPrice': _halfKgPrice,
    'perKgPrice': _perKgPrice,
    'halfKgEgglessPrice': _halfKgEgglessPrice,
    'perKgEgglessPrice': _perKgEgglessPrice,
    'remarks': _remarks,
    'trackInfo': _trackInfo,
    'flavours': _flavours,
    'category': _category,
    'hsnCode': _hsnCode,
    'active': _active,
    'modelNo': _modelNo,
    'imageKey': _imageKey,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'itemCategoryId': _itemCategoryId
  };

  static final amplify_core.QueryModelIdentifier<ItemModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ItemModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CODE = amplify_core.QueryField(fieldName: "code");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final HASHALFKG = amplify_core.QueryField(fieldName: "hasHalfKg");
  static final HALFKGPRICE = amplify_core.QueryField(fieldName: "halfKgPrice");
  static final PERKGPRICE = amplify_core.QueryField(fieldName: "perKgPrice");
  static final HALFKGEGGLESSPRICE = amplify_core.QueryField(fieldName: "halfKgEgglessPrice");
  static final PERKGEGGLESSPRICE = amplify_core.QueryField(fieldName: "perKgEgglessPrice");
  static final REMARKS = amplify_core.QueryField(fieldName: "remarks");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final FLAVOURS = amplify_core.QueryField(
    fieldName: "flavours",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ItemFlavour'));
  static final CATEGORY = amplify_core.QueryField(
    fieldName: "category",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Category'));
  static final HSNCODE = amplify_core.QueryField(fieldName: "hsnCode");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static final MODELNO = amplify_core.QueryField(fieldName: "modelNo");
  static final IMAGEKEY = amplify_core.QueryField(fieldName: "imageKey");
  static final ITEMCATEGORYID = amplify_core.QueryField(fieldName: "itemCategoryId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Item";
    modelSchemaDefinition.pluralName = "Items";
    
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
      key: Item.CODE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.HASHALFKG,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.HALFKGPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.PERKGPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.HALFKGEGGLESSPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.PERKGEGGLESSPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.REMARKS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Item.FLAVOURS,
      isRequired: false,
      ofModelName: 'ItemFlavour',
      associatedKey: ItemFlavour.ITEM
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Item.CATEGORY,
      isRequired: false,
      ofModelName: 'Category',
      associatedKey: Category.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.HSNCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.MODELNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.IMAGEKEY,
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Item.ITEMCATEGORYID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _ItemModelType extends amplify_core.ModelType<Item> {
  const _ItemModelType();
  
  @override
  Item fromJson(Map<String, dynamic> jsonData) {
    return Item.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Item';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Item] in your schema.
 */
class ItemModelIdentifier implements amplify_core.ModelIdentifier<Item> {
  final String id;

  /** Create an instance of ItemModelIdentifier using [id] the primary key. */
  const ItemModelIdentifier({
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
  String toString() => 'ItemModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}