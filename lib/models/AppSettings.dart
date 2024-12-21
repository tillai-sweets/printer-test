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


/** This is an auto generated class representing the AppSettings type in your schema. */
class AppSettings extends amplify_core.Model {
  static const classType = const _AppSettingsModelType();
  final String id;
  final int? _recentOrderLimit;
  final String? _adminPasscode;
  final List<String>? _emailRecipients;
  final String? _gstIn;
  final String? _liscenseNo;
  final String? _contactEmail;
  final String? _companyName;
  final List<String>? _customMessages;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AppSettingsModelIdentifier get modelIdentifier {
      return AppSettingsModelIdentifier(
        id: id
      );
  }
  
  int? get recentOrderLimit {
    return _recentOrderLimit;
  }
  
  String? get adminPasscode {
    return _adminPasscode;
  }
  
  List<String>? get emailRecipients {
    return _emailRecipients;
  }
  
  String? get gstIn {
    return _gstIn;
  }
  
  String? get liscenseNo {
    return _liscenseNo;
  }
  
  String? get contactEmail {
    return _contactEmail;
  }
  
  String? get companyName {
    return _companyName;
  }
  
  List<String>? get customMessages {
    return _customMessages;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const AppSettings._internal({required this.id, recentOrderLimit, adminPasscode, emailRecipients, gstIn, liscenseNo, contactEmail, companyName, customMessages, createdAt, updatedAt}): _recentOrderLimit = recentOrderLimit, _adminPasscode = adminPasscode, _emailRecipients = emailRecipients, _gstIn = gstIn, _liscenseNo = liscenseNo, _contactEmail = contactEmail, _companyName = companyName, _customMessages = customMessages, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory AppSettings({String? id, int? recentOrderLimit, String? adminPasscode, List<String>? emailRecipients, String? gstIn, String? liscenseNo, String? contactEmail, String? companyName, List<String>? customMessages}) {
    return AppSettings._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      recentOrderLimit: recentOrderLimit,
      adminPasscode: adminPasscode,
      emailRecipients: emailRecipients != null ? List<String>.unmodifiable(emailRecipients) : emailRecipients,
      gstIn: gstIn,
      liscenseNo: liscenseNo,
      contactEmail: contactEmail,
      companyName: companyName,
      customMessages: customMessages != null ? List<String>.unmodifiable(customMessages) : customMessages);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppSettings &&
      id == other.id &&
      _recentOrderLimit == other._recentOrderLimit &&
      _adminPasscode == other._adminPasscode &&
      DeepCollectionEquality().equals(_emailRecipients, other._emailRecipients) &&
      _gstIn == other._gstIn &&
      _liscenseNo == other._liscenseNo &&
      _contactEmail == other._contactEmail &&
      _companyName == other._companyName &&
      DeepCollectionEquality().equals(_customMessages, other._customMessages);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("AppSettings {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("recentOrderLimit=" + (_recentOrderLimit != null ? _recentOrderLimit!.toString() : "null") + ", ");
    buffer.write("adminPasscode=" + "$_adminPasscode" + ", ");
    buffer.write("emailRecipients=" + (_emailRecipients != null ? _emailRecipients!.toString() : "null") + ", ");
    buffer.write("gstIn=" + "$_gstIn" + ", ");
    buffer.write("liscenseNo=" + "$_liscenseNo" + ", ");
    buffer.write("contactEmail=" + "$_contactEmail" + ", ");
    buffer.write("companyName=" + "$_companyName" + ", ");
    buffer.write("customMessages=" + (_customMessages != null ? _customMessages!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  AppSettings copyWith({int? recentOrderLimit, String? adminPasscode, List<String>? emailRecipients, String? gstIn, String? liscenseNo, String? contactEmail, String? companyName, List<String>? customMessages}) {
    return AppSettings._internal(
      id: id,
      recentOrderLimit: recentOrderLimit ?? this.recentOrderLimit,
      adminPasscode: adminPasscode ?? this.adminPasscode,
      emailRecipients: emailRecipients ?? this.emailRecipients,
      gstIn: gstIn ?? this.gstIn,
      liscenseNo: liscenseNo ?? this.liscenseNo,
      contactEmail: contactEmail ?? this.contactEmail,
      companyName: companyName ?? this.companyName,
      customMessages: customMessages ?? this.customMessages);
  }
  
  AppSettings copyWithModelFieldValues({
    ModelFieldValue<int?>? recentOrderLimit,
    ModelFieldValue<String?>? adminPasscode,
    ModelFieldValue<List<String>?>? emailRecipients,
    ModelFieldValue<String?>? gstIn,
    ModelFieldValue<String?>? liscenseNo,
    ModelFieldValue<String?>? contactEmail,
    ModelFieldValue<String?>? companyName,
    ModelFieldValue<List<String>?>? customMessages
  }) {
    return AppSettings._internal(
      id: id,
      recentOrderLimit: recentOrderLimit == null ? this.recentOrderLimit : recentOrderLimit.value,
      adminPasscode: adminPasscode == null ? this.adminPasscode : adminPasscode.value,
      emailRecipients: emailRecipients == null ? this.emailRecipients : emailRecipients.value,
      gstIn: gstIn == null ? this.gstIn : gstIn.value,
      liscenseNo: liscenseNo == null ? this.liscenseNo : liscenseNo.value,
      contactEmail: contactEmail == null ? this.contactEmail : contactEmail.value,
      companyName: companyName == null ? this.companyName : companyName.value,
      customMessages: customMessages == null ? this.customMessages : customMessages.value
    );
  }
  
  AppSettings.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _recentOrderLimit = (json['recentOrderLimit'] as num?)?.toInt(),
      _adminPasscode = json['adminPasscode'],
      _emailRecipients = json['emailRecipients']?.cast<String>(),
      _gstIn = json['gstIn'],
      _liscenseNo = json['liscenseNo'],
      _contactEmail = json['contactEmail'],
      _companyName = json['companyName'],
      _customMessages = json['customMessages']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'recentOrderLimit': _recentOrderLimit, 'adminPasscode': _adminPasscode, 'emailRecipients': _emailRecipients, 'gstIn': _gstIn, 'liscenseNo': _liscenseNo, 'contactEmail': _contactEmail, 'companyName': _companyName, 'customMessages': _customMessages, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'recentOrderLimit': _recentOrderLimit,
    'adminPasscode': _adminPasscode,
    'emailRecipients': _emailRecipients,
    'gstIn': _gstIn,
    'liscenseNo': _liscenseNo,
    'contactEmail': _contactEmail,
    'companyName': _companyName,
    'customMessages': _customMessages,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<AppSettingsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<AppSettingsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RECENTORDERLIMIT = amplify_core.QueryField(fieldName: "recentOrderLimit");
  static final ADMINPASSCODE = amplify_core.QueryField(fieldName: "adminPasscode");
  static final EMAILRECIPIENTS = amplify_core.QueryField(fieldName: "emailRecipients");
  static final GSTIN = amplify_core.QueryField(fieldName: "gstIn");
  static final LISCENSENO = amplify_core.QueryField(fieldName: "liscenseNo");
  static final CONTACTEMAIL = amplify_core.QueryField(fieldName: "contactEmail");
  static final COMPANYNAME = amplify_core.QueryField(fieldName: "companyName");
  static final CUSTOMMESSAGES = amplify_core.QueryField(fieldName: "customMessages");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "AppSettings";
    modelSchemaDefinition.pluralName = "AppSettings";
    
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
      key: AppSettings.RECENTORDERLIMIT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.ADMINPASSCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.EMAILRECIPIENTS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.GSTIN,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.LISCENSENO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.CONTACTEMAIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.COMPANYNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: AppSettings.CUSTOMMESSAGES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
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

class _AppSettingsModelType extends amplify_core.ModelType<AppSettings> {
  const _AppSettingsModelType();
  
  @override
  AppSettings fromJson(Map<String, dynamic> jsonData) {
    return AppSettings.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'AppSettings';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [AppSettings] in your schema.
 */
class AppSettingsModelIdentifier implements amplify_core.ModelIdentifier<AppSettings> {
  final String id;

  /** Create an instance of AppSettingsModelIdentifier using [id] the primary key. */
  const AppSettingsModelIdentifier({
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
  String toString() => 'AppSettingsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AppSettingsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}