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


/** This is an auto generated class representing the ItemFlavour type in your schema. */
class ItemFlavour extends amplify_core.Model {
  static const classType = const _ItemFlavourModelType();
  final String id;
  final Flavour? _flavour;
  final Item? _item;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ItemFlavourModelIdentifier get modelIdentifier {
      return ItemFlavourModelIdentifier(
        id: id
      );
  }
  
  Flavour get flavour {
    try {
      return _flavour!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Item get item {
    try {
      return _item!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ItemFlavour._internal({required this.id, required flavour, required item, createdAt, updatedAt}): _flavour = flavour, _item = item, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ItemFlavour({String? id, required Flavour flavour, required Item item}) {
    return ItemFlavour._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      flavour: flavour,
      item: item);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemFlavour &&
      id == other.id &&
      _flavour == other._flavour &&
      _item == other._item;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ItemFlavour {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("flavour=" + (_flavour != null ? _flavour!.toString() : "null") + ", ");
    buffer.write("item=" + (_item != null ? _item!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ItemFlavour copyWith({Flavour? flavour, Item? item}) {
    return ItemFlavour._internal(
      id: id,
      flavour: flavour ?? this.flavour,
      item: item ?? this.item);
  }
  
  ItemFlavour copyWithModelFieldValues({
    ModelFieldValue<Flavour>? flavour,
    ModelFieldValue<Item>? item
  }) {
    return ItemFlavour._internal(
      id: id,
      flavour: flavour == null ? this.flavour : flavour.value,
      item: item == null ? this.item : item.value
    );
  }
  
  ItemFlavour.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _flavour = json['flavour'] != null
        ? json['flavour']['serializedData'] != null
          ? Flavour.fromJson(new Map<String, dynamic>.from(json['flavour']['serializedData']))
          : Flavour.fromJson(new Map<String, dynamic>.from(json['flavour']))
        : null,
      _item = json['item'] != null
        ? json['item']['serializedData'] != null
          ? Item.fromJson(new Map<String, dynamic>.from(json['item']['serializedData']))
          : Item.fromJson(new Map<String, dynamic>.from(json['item']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'flavour': _flavour?.toJson(), 'item': _item?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'flavour': _flavour,
    'item': _item,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ItemFlavourModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ItemFlavourModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FLAVOUR = amplify_core.QueryField(
    fieldName: "flavour",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Flavour'));
  static final ITEM = amplify_core.QueryField(
    fieldName: "item",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Item'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ItemFlavour";
    modelSchemaDefinition.pluralName = "ItemFlavours";
    
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["flavourId"], name: "byFlavour"),
      amplify_core.ModelIndex(fields: const ["itemId"], name: "byItem")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ItemFlavour.FLAVOUR,
      isRequired: true,
      targetNames: ['flavourId'],
      ofModelName: 'Flavour'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ItemFlavour.ITEM,
      isRequired: true,
      targetNames: ['itemId'],
      ofModelName: 'Item'
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

class _ItemFlavourModelType extends amplify_core.ModelType<ItemFlavour> {
  const _ItemFlavourModelType();
  
  @override
  ItemFlavour fromJson(Map<String, dynamic> jsonData) {
    return ItemFlavour.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ItemFlavour';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ItemFlavour] in your schema.
 */
class ItemFlavourModelIdentifier implements amplify_core.ModelIdentifier<ItemFlavour> {
  final String id;

  /** Create an instance of ItemFlavourModelIdentifier using [id] the primary key. */
  const ItemFlavourModelIdentifier({
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
  String toString() => 'ItemFlavourModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ItemFlavourModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}