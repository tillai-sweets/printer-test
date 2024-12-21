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


/** This is an auto generated class representing the UserProfile type in your schema. */
class UserProfile extends amplify_core.Model {
  static const classType = const _UserProfileModelType();
  final String id;
  final String? _name;
  final String? _employeeCode;
  final String? _email;
  final String? _dialCode;
  final String? _phoneNumber;
  final RoleType? _role;
  final UserStatusType? _userStatusType;
  final Branch? _branch;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _userProfileBranchId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserProfileModelIdentifier get modelIdentifier {
      return UserProfileModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get employeeCode {
    return _employeeCode;
  }
  
  String? get email {
    return _email;
  }
  
  String? get dialCode {
    return _dialCode;
  }
  
  String? get phoneNumber {
    return _phoneNumber;
  }
  
  RoleType? get role {
    return _role;
  }
  
  UserStatusType? get userStatusType {
    return _userStatusType;
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
  
  String? get userProfileBranchId {
    return _userProfileBranchId;
  }
  
  const UserProfile._internal({required this.id, name, employeeCode, email, dialCode, phoneNumber, role, userStatusType, branch, createdAt, updatedAt, userProfileBranchId}): _name = name, _employeeCode = employeeCode, _email = email, _dialCode = dialCode, _phoneNumber = phoneNumber, _role = role, _userStatusType = userStatusType, _branch = branch, _createdAt = createdAt, _updatedAt = updatedAt, _userProfileBranchId = userProfileBranchId;
  
  factory UserProfile({String? id, String? name, String? employeeCode, String? email, String? dialCode, String? phoneNumber, RoleType? role, UserStatusType? userStatusType, Branch? branch, String? userProfileBranchId}) {
    return UserProfile._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      employeeCode: employeeCode,
      email: email,
      dialCode: dialCode,
      phoneNumber: phoneNumber,
      role: role,
      userStatusType: userStatusType,
      branch: branch,
      userProfileBranchId: userProfileBranchId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
      id == other.id &&
      _name == other._name &&
      _employeeCode == other._employeeCode &&
      _email == other._email &&
      _dialCode == other._dialCode &&
      _phoneNumber == other._phoneNumber &&
      _role == other._role &&
      _userStatusType == other._userStatusType &&
      _branch == other._branch &&
      _userProfileBranchId == other._userProfileBranchId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserProfile {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("employeeCode=" + "$_employeeCode" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("dialCode=" + "$_dialCode" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("role=" + (_role != null ? amplify_core.enumToString(_role)! : "null") + ", ");
    buffer.write("userStatusType=" + (_userStatusType != null ? amplify_core.enumToString(_userStatusType)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("userProfileBranchId=" + "$_userProfileBranchId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserProfile copyWith({String? name, String? employeeCode, String? email, String? dialCode, String? phoneNumber, RoleType? role, UserStatusType? userStatusType, Branch? branch, String? userProfileBranchId}) {
    return UserProfile._internal(
      id: id,
      name: name ?? this.name,
      employeeCode: employeeCode ?? this.employeeCode,
      email: email ?? this.email,
      dialCode: dialCode ?? this.dialCode,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      role: role ?? this.role,
      userStatusType: userStatusType ?? this.userStatusType,
      branch: branch ?? this.branch,
      userProfileBranchId: userProfileBranchId ?? this.userProfileBranchId);
  }
  
  UserProfile copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<String?>? employeeCode,
    ModelFieldValue<String?>? email,
    ModelFieldValue<String?>? dialCode,
    ModelFieldValue<String?>? phoneNumber,
    ModelFieldValue<RoleType?>? role,
    ModelFieldValue<UserStatusType?>? userStatusType,
    ModelFieldValue<Branch?>? branch,
    ModelFieldValue<String?>? userProfileBranchId
  }) {
    return UserProfile._internal(
      id: id,
      name: name == null ? this.name : name.value,
      employeeCode: employeeCode == null ? this.employeeCode : employeeCode.value,
      email: email == null ? this.email : email.value,
      dialCode: dialCode == null ? this.dialCode : dialCode.value,
      phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber.value,
      role: role == null ? this.role : role.value,
      userStatusType: userStatusType == null ? this.userStatusType : userStatusType.value,
      branch: branch == null ? this.branch : branch.value,
      userProfileBranchId: userProfileBranchId == null ? this.userProfileBranchId : userProfileBranchId.value
    );
  }
  
  UserProfile.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _employeeCode = json['employeeCode'],
      _email = json['email'],
      _dialCode = json['dialCode'],
      _phoneNumber = json['phoneNumber'],
      _role = amplify_core.enumFromString<RoleType>(json['role'], RoleType.values),
      _userStatusType = amplify_core.enumFromString<UserStatusType>(json['userStatusType'], UserStatusType.values),
      _branch = json['branch'] != null
        ? json['branch']['serializedData'] != null
          ? Branch.fromJson(new Map<String, dynamic>.from(json['branch']['serializedData']))
          : Branch.fromJson(new Map<String, dynamic>.from(json['branch']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _userProfileBranchId = json['userProfileBranchId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'employeeCode': _employeeCode, 'email': _email, 'dialCode': _dialCode, 'phoneNumber': _phoneNumber, 'role': amplify_core.enumToString(_role), 'userStatusType': amplify_core.enumToString(_userStatusType), 'branch': _branch?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'userProfileBranchId': _userProfileBranchId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'employeeCode': _employeeCode,
    'email': _email,
    'dialCode': _dialCode,
    'phoneNumber': _phoneNumber,
    'role': _role,
    'userStatusType': _userStatusType,
    'branch': _branch,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'userProfileBranchId': _userProfileBranchId
  };

  static final amplify_core.QueryModelIdentifier<UserProfileModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserProfileModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final EMPLOYEECODE = amplify_core.QueryField(fieldName: "employeeCode");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final DIALCODE = amplify_core.QueryField(fieldName: "dialCode");
  static final PHONENUMBER = amplify_core.QueryField(fieldName: "phoneNumber");
  static final ROLE = amplify_core.QueryField(fieldName: "role");
  static final USERSTATUSTYPE = amplify_core.QueryField(fieldName: "userStatusType");
  static final BRANCH = amplify_core.QueryField(
    fieldName: "branch",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Branch'));
  static final USERPROFILEBRANCHID = amplify_core.QueryField(fieldName: "userProfileBranchId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserProfile";
    modelSchemaDefinition.pluralName = "UserProfiles";
    
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
      key: UserProfile.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.EMPLOYEECODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.EMAIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.DIALCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.PHONENUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.ROLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserProfile.USERSTATUSTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: UserProfile.BRANCH,
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
      key: UserProfile.USERPROFILEBRANCHID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _UserProfileModelType extends amplify_core.ModelType<UserProfile> {
  const _UserProfileModelType();
  
  @override
  UserProfile fromJson(Map<String, dynamic> jsonData) {
    return UserProfile.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'UserProfile';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [UserProfile] in your schema.
 */
class UserProfileModelIdentifier implements amplify_core.ModelIdentifier<UserProfile> {
  final String id;

  /** Create an instance of UserProfileModelIdentifier using [id] the primary key. */
  const UserProfileModelIdentifier({
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
  String toString() => 'UserProfileModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserProfileModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}