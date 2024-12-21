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


/** This is an auto generated class representing the Customer type in your schema. */
class Customer extends amplify_core.Model {
  static const classType = const _CustomerModelType();
  final String id;
  final String? _name;
  final String? _phoneNumber;
  final String? _dialCode;
  final String? _gst;
  final String? _buildingNo;
  final String? _addressLine1;
  final String? _addressLine2;
  final String? _landmark;
  final String? _state;
  final String? _countryCode;
  final String? _country;
  final String? _pincode;
  final TrackInfo? _trackInfo;
  final bool? _active;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CustomerModelIdentifier get modelIdentifier {
      return CustomerModelIdentifier(
        id: id
      );
  }
  
  String? get name {
    return _name;
  }
  
  String? get phoneNumber {
    return _phoneNumber;
  }
  
  String? get dialCode {
    return _dialCode;
  }
  
  String? get gst {
    return _gst;
  }
  
  String? get buildingNo {
    return _buildingNo;
  }
  
  String? get addressLine1 {
    return _addressLine1;
  }
  
  String? get addressLine2 {
    return _addressLine2;
  }
  
  String? get landmark {
    return _landmark;
  }
  
  String? get state {
    return _state;
  }
  
  String? get countryCode {
    return _countryCode;
  }
  
  String? get country {
    return _country;
  }
  
  String? get pincode {
    return _pincode;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
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
  
  const Customer._internal({required this.id, name, phoneNumber, dialCode, gst, buildingNo, addressLine1, addressLine2, landmark, state, countryCode, country, pincode, trackInfo, active, createdAt, updatedAt}): _name = name, _phoneNumber = phoneNumber, _dialCode = dialCode, _gst = gst, _buildingNo = buildingNo, _addressLine1 = addressLine1, _addressLine2 = addressLine2, _landmark = landmark, _state = state, _countryCode = countryCode, _country = country, _pincode = pincode, _trackInfo = trackInfo, _active = active, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Customer({String? id, String? name, String? phoneNumber, String? dialCode, String? gst, String? buildingNo, String? addressLine1, String? addressLine2, String? landmark, String? state, String? countryCode, String? country, String? pincode, TrackInfo? trackInfo, bool? active}) {
    return Customer._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      phoneNumber: phoneNumber,
      dialCode: dialCode,
      gst: gst,
      buildingNo: buildingNo,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      landmark: landmark,
      state: state,
      countryCode: countryCode,
      country: country,
      pincode: pincode,
      trackInfo: trackInfo,
      active: active);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
      id == other.id &&
      _name == other._name &&
      _phoneNumber == other._phoneNumber &&
      _dialCode == other._dialCode &&
      _gst == other._gst &&
      _buildingNo == other._buildingNo &&
      _addressLine1 == other._addressLine1 &&
      _addressLine2 == other._addressLine2 &&
      _landmark == other._landmark &&
      _state == other._state &&
      _countryCode == other._countryCode &&
      _country == other._country &&
      _pincode == other._pincode &&
      _trackInfo == other._trackInfo &&
      _active == other._active;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Customer {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("dialCode=" + "$_dialCode" + ", ");
    buffer.write("gst=" + "$_gst" + ", ");
    buffer.write("buildingNo=" + "$_buildingNo" + ", ");
    buffer.write("addressLine1=" + "$_addressLine1" + ", ");
    buffer.write("addressLine2=" + "$_addressLine2" + ", ");
    buffer.write("landmark=" + "$_landmark" + ", ");
    buffer.write("state=" + "$_state" + ", ");
    buffer.write("countryCode=" + "$_countryCode" + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("pincode=" + "$_pincode" + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("active=" + (_active != null ? _active!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Customer copyWith({String? name, String? phoneNumber, String? dialCode, String? gst, String? buildingNo, String? addressLine1, String? addressLine2, String? landmark, String? state, String? countryCode, String? country, String? pincode, TrackInfo? trackInfo, bool? active}) {
    return Customer._internal(
      id: id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      dialCode: dialCode ?? this.dialCode,
      gst: gst ?? this.gst,
      buildingNo: buildingNo ?? this.buildingNo,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      landmark: landmark ?? this.landmark,
      state: state ?? this.state,
      countryCode: countryCode ?? this.countryCode,
      country: country ?? this.country,
      pincode: pincode ?? this.pincode,
      trackInfo: trackInfo ?? this.trackInfo,
      active: active ?? this.active);
  }
  
  Customer copyWithModelFieldValues({
    ModelFieldValue<String?>? name,
    ModelFieldValue<String?>? phoneNumber,
    ModelFieldValue<String?>? dialCode,
    ModelFieldValue<String?>? gst,
    ModelFieldValue<String?>? buildingNo,
    ModelFieldValue<String?>? addressLine1,
    ModelFieldValue<String?>? addressLine2,
    ModelFieldValue<String?>? landmark,
    ModelFieldValue<String?>? state,
    ModelFieldValue<String?>? countryCode,
    ModelFieldValue<String?>? country,
    ModelFieldValue<String?>? pincode,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<bool?>? active
  }) {
    return Customer._internal(
      id: id,
      name: name == null ? this.name : name.value,
      phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber.value,
      dialCode: dialCode == null ? this.dialCode : dialCode.value,
      gst: gst == null ? this.gst : gst.value,
      buildingNo: buildingNo == null ? this.buildingNo : buildingNo.value,
      addressLine1: addressLine1 == null ? this.addressLine1 : addressLine1.value,
      addressLine2: addressLine2 == null ? this.addressLine2 : addressLine2.value,
      landmark: landmark == null ? this.landmark : landmark.value,
      state: state == null ? this.state : state.value,
      countryCode: countryCode == null ? this.countryCode : countryCode.value,
      country: country == null ? this.country : country.value,
      pincode: pincode == null ? this.pincode : pincode.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      active: active == null ? this.active : active.value
    );
  }
  
  Customer.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _phoneNumber = json['phoneNumber'],
      _dialCode = json['dialCode'],
      _gst = json['gst'],
      _buildingNo = json['buildingNo'],
      _addressLine1 = json['addressLine1'],
      _addressLine2 = json['addressLine2'],
      _landmark = json['landmark'],
      _state = json['state'],
      _countryCode = json['countryCode'],
      _country = json['country'],
      _pincode = json['pincode'],
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _active = json['active'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'phoneNumber': _phoneNumber, 'dialCode': _dialCode, 'gst': _gst, 'buildingNo': _buildingNo, 'addressLine1': _addressLine1, 'addressLine2': _addressLine2, 'landmark': _landmark, 'state': _state, 'countryCode': _countryCode, 'country': _country, 'pincode': _pincode, 'trackInfo': _trackInfo?.toJson(), 'active': _active, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'phoneNumber': _phoneNumber,
    'dialCode': _dialCode,
    'gst': _gst,
    'buildingNo': _buildingNo,
    'addressLine1': _addressLine1,
    'addressLine2': _addressLine2,
    'landmark': _landmark,
    'state': _state,
    'countryCode': _countryCode,
    'country': _country,
    'pincode': _pincode,
    'trackInfo': _trackInfo,
    'active': _active,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CustomerModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CustomerModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final PHONENUMBER = amplify_core.QueryField(fieldName: "phoneNumber");
  static final DIALCODE = amplify_core.QueryField(fieldName: "dialCode");
  static final GST = amplify_core.QueryField(fieldName: "gst");
  static final BUILDINGNO = amplify_core.QueryField(fieldName: "buildingNo");
  static final ADDRESSLINE1 = amplify_core.QueryField(fieldName: "addressLine1");
  static final ADDRESSLINE2 = amplify_core.QueryField(fieldName: "addressLine2");
  static final LANDMARK = amplify_core.QueryField(fieldName: "landmark");
  static final STATE = amplify_core.QueryField(fieldName: "state");
  static final COUNTRYCODE = amplify_core.QueryField(fieldName: "countryCode");
  static final COUNTRY = amplify_core.QueryField(fieldName: "country");
  static final PINCODE = amplify_core.QueryField(fieldName: "pincode");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final ACTIVE = amplify_core.QueryField(fieldName: "active");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Customer";
    modelSchemaDefinition.pluralName = "Customers";
    
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
      key: Customer.NAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.PHONENUMBER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.DIALCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.GST,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.BUILDINGNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.ADDRESSLINE1,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.ADDRESSLINE2,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.LANDMARK,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.STATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.COUNTRYCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.COUNTRY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.PINCODE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Customer.ACTIVE,
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

class _CustomerModelType extends amplify_core.ModelType<Customer> {
  const _CustomerModelType();
  
  @override
  Customer fromJson(Map<String, dynamic> jsonData) {
    return Customer.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Customer';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Customer] in your schema.
 */
class CustomerModelIdentifier implements amplify_core.ModelIdentifier<Customer> {
  final String id;

  /** Create an instance of CustomerModelIdentifier using [id] the primary key. */
  const CustomerModelIdentifier({
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
  String toString() => 'CustomerModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CustomerModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}