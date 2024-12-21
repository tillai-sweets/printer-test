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


/** This is an auto generated class representing the Sales type in your schema. */
class Sales extends amplify_core.Model {
  static const classType = const _SalesModelType();
  final String id;
  final int? _year;
  final amplify_core.TemporalDate? _day;
  final double? _amount;
  final Branch? _branch;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _salesBranchId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SalesModelIdentifier get modelIdentifier {
      return SalesModelIdentifier(
        id: id
      );
  }
  
  int? get year {
    return _year;
  }
  
  amplify_core.TemporalDate? get day {
    return _day;
  }
  
  double? get amount {
    return _amount;
  }
  
  Branch? get branch {
    return _branch;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get salesBranchId {
    return _salesBranchId;
  }
  
  const Sales._internal({required this.id, year, day, amount, branch, createdAt, updatedAt, salesBranchId}): _year = year, _day = day, _amount = amount, _branch = branch, _createdAt = createdAt, _updatedAt = updatedAt, _salesBranchId = salesBranchId;
  
  factory Sales({String? id, int? year, amplify_core.TemporalDate? day, double? amount, Branch? branch, String? salesBranchId}) {
    return Sales._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      year: year,
      day: day,
      amount: amount,
      branch: branch,
      salesBranchId: salesBranchId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sales &&
      id == other.id &&
      _year == other._year &&
      _day == other._day &&
      _amount == other._amount &&
      _branch == other._branch &&
      _salesBranchId == other._salesBranchId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Sales {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("year=" + (_year != null ? _year!.toString() : "null") + ", ");
    buffer.write("day=" + (_day != null ? _day!.format() : "null") + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("salesBranchId=" + "$_salesBranchId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Sales copyWith({int? year, amplify_core.TemporalDate? day, double? amount, Branch? branch, String? salesBranchId}) {
    return Sales._internal(
      id: id,
      year: year ?? this.year,
      day: day ?? this.day,
      amount: amount ?? this.amount,
      branch: branch ?? this.branch,
      salesBranchId: salesBranchId ?? this.salesBranchId);
  }
  
  Sales copyWithModelFieldValues({
    ModelFieldValue<int?>? year,
    ModelFieldValue<amplify_core.TemporalDate?>? day,
    ModelFieldValue<double?>? amount,
    ModelFieldValue<Branch?>? branch,
    ModelFieldValue<String?>? salesBranchId
  }) {
    return Sales._internal(
      id: id,
      year: year == null ? this.year : year.value,
      day: day == null ? this.day : day.value,
      amount: amount == null ? this.amount : amount.value,
      branch: branch == null ? this.branch : branch.value,
      salesBranchId: salesBranchId == null ? this.salesBranchId : salesBranchId.value
    );
  }
  
  Sales.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _year = (json['year'] as num?)?.toInt(),
      _day = json['day'] != null ? amplify_core.TemporalDate.fromString(json['day']) : null,
      _amount = (json['amount'] as num?)?.toDouble(),
      _branch = json['branch'] != null
        ? json['branch']['serializedData'] != null
          ? Branch.fromJson(new Map<String, dynamic>.from(json['branch']['serializedData']))
          : Branch.fromJson(new Map<String, dynamic>.from(json['branch']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _salesBranchId = json['salesBranchId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'year': _year, 'day': _day?.format(), 'amount': _amount, 'branch': _branch?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'salesBranchId': _salesBranchId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'year': _year,
    'day': _day,
    'amount': _amount,
    'branch': _branch,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'salesBranchId': _salesBranchId
  };

  static final amplify_core.QueryModelIdentifier<SalesModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SalesModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final YEAR = amplify_core.QueryField(fieldName: "year");
  static final DAY = amplify_core.QueryField(fieldName: "day");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final BRANCH = amplify_core.QueryField(
    fieldName: "branch",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Branch'));
  static final SALESBRANCHID = amplify_core.QueryField(fieldName: "salesBranchId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Sales";
    modelSchemaDefinition.pluralName = "Sales";
    
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
      key: Sales.YEAR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Sales.DAY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Sales.AMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Sales.BRANCH,
      isRequired: false,
      ofModelName: 'Branch',
      associatedKey: Branch.ID
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
      key: Sales.SALESBRANCHID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _SalesModelType extends amplify_core.ModelType<Sales> {
  const _SalesModelType();
  
  @override
  Sales fromJson(Map<String, dynamic> jsonData) {
    return Sales.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Sales';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Sales] in your schema.
 */
class SalesModelIdentifier implements amplify_core.ModelIdentifier<Sales> {
  final String id;

  /** Create an instance of SalesModelIdentifier using [id] the primary key. */
  const SalesModelIdentifier({
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
  String toString() => 'SalesModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SalesModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}