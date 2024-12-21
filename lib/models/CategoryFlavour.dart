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


/** This is an auto generated class representing the CategoryFlavour type in your schema. */
class CategoryFlavour extends amplify_core.Model {
  static const classType = const _CategoryFlavourModelType();
  final String id;
  final Flavour? _flavour;
  final Category? _category;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CategoryFlavourModelIdentifier get modelIdentifier {
      return CategoryFlavourModelIdentifier(
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
  
  Category get category {
    try {
      return _category!;
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
  
  const CategoryFlavour._internal({required this.id, required flavour, required category, createdAt, updatedAt}): _flavour = flavour, _category = category, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CategoryFlavour({String? id, required Flavour flavour, required Category category}) {
    return CategoryFlavour._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      flavour: flavour,
      category: category);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryFlavour &&
      id == other.id &&
      _flavour == other._flavour &&
      _category == other._category;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CategoryFlavour {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("flavour=" + (_flavour != null ? _flavour!.toString() : "null") + ", ");
    buffer.write("category=" + (_category != null ? _category!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CategoryFlavour copyWith({Flavour? flavour, Category? category}) {
    return CategoryFlavour._internal(
      id: id,
      flavour: flavour ?? this.flavour,
      category: category ?? this.category);
  }
  
  CategoryFlavour copyWithModelFieldValues({
    ModelFieldValue<Flavour>? flavour,
    ModelFieldValue<Category>? category
  }) {
    return CategoryFlavour._internal(
      id: id,
      flavour: flavour == null ? this.flavour : flavour.value,
      category: category == null ? this.category : category.value
    );
  }
  
  CategoryFlavour.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _flavour = json['flavour'] != null
        ? json['flavour']['serializedData'] != null
          ? Flavour.fromJson(new Map<String, dynamic>.from(json['flavour']['serializedData']))
          : Flavour.fromJson(new Map<String, dynamic>.from(json['flavour']))
        : null,
      _category = json['category'] != null
        ? json['category']['serializedData'] != null
          ? Category.fromJson(new Map<String, dynamic>.from(json['category']['serializedData']))
          : Category.fromJson(new Map<String, dynamic>.from(json['category']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'flavour': _flavour?.toJson(), 'category': _category?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'flavour': _flavour,
    'category': _category,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CategoryFlavourModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CategoryFlavourModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FLAVOUR = amplify_core.QueryField(
    fieldName: "flavour",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Flavour'));
  static final CATEGORY = amplify_core.QueryField(
    fieldName: "category",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Category'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CategoryFlavour";
    modelSchemaDefinition.pluralName = "CategoryFlavours";
    
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
      amplify_core.ModelIndex(fields: const ["categoryId"], name: "byCategory")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: CategoryFlavour.FLAVOUR,
      isRequired: true,
      targetNames: ['flavourId'],
      ofModelName: 'Flavour'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: CategoryFlavour.CATEGORY,
      isRequired: true,
      targetNames: ['categoryId'],
      ofModelName: 'Category'
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

class _CategoryFlavourModelType extends amplify_core.ModelType<CategoryFlavour> {
  const _CategoryFlavourModelType();
  
  @override
  CategoryFlavour fromJson(Map<String, dynamic> jsonData) {
    return CategoryFlavour.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CategoryFlavour';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CategoryFlavour] in your schema.
 */
class CategoryFlavourModelIdentifier implements amplify_core.ModelIdentifier<CategoryFlavour> {
  final String id;

  /** Create an instance of CategoryFlavourModelIdentifier using [id] the primary key. */
  const CategoryFlavourModelIdentifier({
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
  String toString() => 'CategoryFlavourModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CategoryFlavourModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}