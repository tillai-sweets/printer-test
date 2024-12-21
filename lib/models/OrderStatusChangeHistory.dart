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


/** This is an auto generated class representing the OrderStatusChangeHistory type in your schema. */
class OrderStatusChangeHistory {
  final OrderStatus? _status;
  final String? _reasonForChange;
  final amplify_core.TemporalDateTime? _dateTime;
  final String? _changedBy;

  OrderStatus? get status {
    return _status;
  }
  
  String? get reasonForChange {
    return _reasonForChange;
  }
  
  amplify_core.TemporalDateTime? get dateTime {
    return _dateTime;
  }
  
  String? get changedBy {
    return _changedBy;
  }
  
  const OrderStatusChangeHistory._internal({status, reasonForChange, dateTime, changedBy}): _status = status, _reasonForChange = reasonForChange, _dateTime = dateTime, _changedBy = changedBy;
  
  factory OrderStatusChangeHistory({OrderStatus? status, String? reasonForChange, amplify_core.TemporalDateTime? dateTime, String? changedBy}) {
    return OrderStatusChangeHistory._internal(
      status: status,
      reasonForChange: reasonForChange,
      dateTime: dateTime,
      changedBy: changedBy);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderStatusChangeHistory &&
      _status == other._status &&
      _reasonForChange == other._reasonForChange &&
      _dateTime == other._dateTime &&
      _changedBy == other._changedBy;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OrderStatusChangeHistory {");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("reasonForChange=" + "$_reasonForChange" + ", ");
    buffer.write("dateTime=" + (_dateTime != null ? _dateTime!.format() : "null") + ", ");
    buffer.write("changedBy=" + "$_changedBy");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OrderStatusChangeHistory copyWith({OrderStatus? status, String? reasonForChange, amplify_core.TemporalDateTime? dateTime, String? changedBy}) {
    return OrderStatusChangeHistory._internal(
      status: status ?? this.status,
      reasonForChange: reasonForChange ?? this.reasonForChange,
      dateTime: dateTime ?? this.dateTime,
      changedBy: changedBy ?? this.changedBy);
  }
  
  OrderStatusChangeHistory copyWithModelFieldValues({
    ModelFieldValue<OrderStatus?>? status,
    ModelFieldValue<String?>? reasonForChange,
    ModelFieldValue<amplify_core.TemporalDateTime?>? dateTime,
    ModelFieldValue<String?>? changedBy
  }) {
    return OrderStatusChangeHistory._internal(
      status: status == null ? this.status : status.value,
      reasonForChange: reasonForChange == null ? this.reasonForChange : reasonForChange.value,
      dateTime: dateTime == null ? this.dateTime : dateTime.value,
      changedBy: changedBy == null ? this.changedBy : changedBy.value
    );
  }
  
  OrderStatusChangeHistory.fromJson(Map<String, dynamic> json)  
    : _status = amplify_core.enumFromString<OrderStatus>(json['status'], OrderStatus.values),
      _reasonForChange = json['reasonForChange'],
      _dateTime = json['dateTime'] != null ? amplify_core.TemporalDateTime.fromString(json['dateTime']) : null,
      _changedBy = json['changedBy'];
  
  Map<String, dynamic> toJson() => {
    'status': amplify_core.enumToString(_status), 'reasonForChange': _reasonForChange, 'dateTime': _dateTime?.format(), 'changedBy': _changedBy
  };
  
  Map<String, Object?> toMap() => {
    'status': _status,
    'reasonForChange': _reasonForChange,
    'dateTime': _dateTime,
    'changedBy': _changedBy
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OrderStatusChangeHistory";
    modelSchemaDefinition.pluralName = "OrderStatusChangeHistories";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'status',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'reasonForChange',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'dateTime',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'changedBy',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}