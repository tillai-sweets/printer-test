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


/** This is an auto generated class representing the ArchiveOrder type in your schema. */
class ArchiveOrder extends amplify_core.Model {
  static const classType = const _ArchiveOrderModelType();
  final String id;
  final String? _orderId;
  final amplify_core.TemporalDateTime? _dateTime;
  final String? _deliveredDatetime;
  final double? _totalOrderAmount;
  final double? _ugstAmount;
  final double? _roundOffAmount;
  final double? _discountPercentage;
  final double? _discountAmount;
  final double? _totalAmount;
  final double? _advanceAmount;
  final bool? _fullyPaid;
  final OrderStatus? _orderStatus;
  final String? _orderTakenBy;
  final TrackInfo? _trackInfo;
  final String? _customerId;
  final String? _branchId;
  final amplify_core.TemporalDate? _deliveryDate;
  final amplify_core.TemporalTime? _deliveryTime;
  final amplify_core.TemporalDateTime? _createdOn;
  final double? _totalWeight;
  final int? _totalQty;
  final String? _statusRemark;
  final List<OrderStatusChangeHistory>? _statusChangeHistory;
  final List<OrderArchiveDetail>? _orderDetails;
  final String? _orderFormNo;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ArchiveOrderModelIdentifier get modelIdentifier {
      return ArchiveOrderModelIdentifier(
        id: id
      );
  }
  
  String? get orderId {
    return _orderId;
  }
  
  amplify_core.TemporalDateTime? get dateTime {
    return _dateTime;
  }
  
  String? get deliveredDatetime {
    return _deliveredDatetime;
  }
  
  double? get totalOrderAmount {
    return _totalOrderAmount;
  }
  
  double? get ugstAmount {
    return _ugstAmount;
  }
  
  double? get roundOffAmount {
    return _roundOffAmount;
  }
  
  double? get discountPercentage {
    return _discountPercentage;
  }
  
  double? get discountAmount {
    return _discountAmount;
  }
  
  double? get totalAmount {
    return _totalAmount;
  }
  
  double? get advanceAmount {
    return _advanceAmount;
  }
  
  bool? get fullyPaid {
    return _fullyPaid;
  }
  
  OrderStatus? get orderStatus {
    return _orderStatus;
  }
  
  String? get orderTakenBy {
    return _orderTakenBy;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  String? get customerId {
    return _customerId;
  }
  
  String? get branchId {
    return _branchId;
  }
  
  amplify_core.TemporalDate? get deliveryDate {
    return _deliveryDate;
  }
  
  amplify_core.TemporalTime? get deliveryTime {
    return _deliveryTime;
  }
  
  amplify_core.TemporalDateTime? get createdOn {
    return _createdOn;
  }
  
  double? get totalWeight {
    return _totalWeight;
  }
  
  int? get totalQty {
    return _totalQty;
  }
  
  String? get statusRemark {
    return _statusRemark;
  }
  
  List<OrderStatusChangeHistory>? get statusChangeHistory {
    return _statusChangeHistory;
  }
  
  List<OrderArchiveDetail>? get orderDetails {
    return _orderDetails;
  }
  
  String? get orderFormNo {
    return _orderFormNo;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ArchiveOrder._internal({required this.id, orderId, dateTime, deliveredDatetime, totalOrderAmount, ugstAmount, roundOffAmount, discountPercentage, discountAmount, totalAmount, advanceAmount, fullyPaid, orderStatus, orderTakenBy, trackInfo, customerId, branchId, deliveryDate, deliveryTime, createdOn, totalWeight, totalQty, statusRemark, statusChangeHistory, orderDetails, orderFormNo, createdAt, updatedAt}): _orderId = orderId, _dateTime = dateTime, _deliveredDatetime = deliveredDatetime, _totalOrderAmount = totalOrderAmount, _ugstAmount = ugstAmount, _roundOffAmount = roundOffAmount, _discountPercentage = discountPercentage, _discountAmount = discountAmount, _totalAmount = totalAmount, _advanceAmount = advanceAmount, _fullyPaid = fullyPaid, _orderStatus = orderStatus, _orderTakenBy = orderTakenBy, _trackInfo = trackInfo, _customerId = customerId, _branchId = branchId, _deliveryDate = deliveryDate, _deliveryTime = deliveryTime, _createdOn = createdOn, _totalWeight = totalWeight, _totalQty = totalQty, _statusRemark = statusRemark, _statusChangeHistory = statusChangeHistory, _orderDetails = orderDetails, _orderFormNo = orderFormNo, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ArchiveOrder({String? id, String? orderId, amplify_core.TemporalDateTime? dateTime, String? deliveredDatetime, double? totalOrderAmount, double? ugstAmount, double? roundOffAmount, double? discountPercentage, double? discountAmount, double? totalAmount, double? advanceAmount, bool? fullyPaid, OrderStatus? orderStatus, String? orderTakenBy, TrackInfo? trackInfo, String? customerId, String? branchId, amplify_core.TemporalDate? deliveryDate, amplify_core.TemporalTime? deliveryTime, amplify_core.TemporalDateTime? createdOn, double? totalWeight, int? totalQty, String? statusRemark, List<OrderStatusChangeHistory>? statusChangeHistory, List<OrderArchiveDetail>? orderDetails, String? orderFormNo}) {
    return ArchiveOrder._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      orderId: orderId,
      dateTime: dateTime,
      deliveredDatetime: deliveredDatetime,
      totalOrderAmount: totalOrderAmount,
      ugstAmount: ugstAmount,
      roundOffAmount: roundOffAmount,
      discountPercentage: discountPercentage,
      discountAmount: discountAmount,
      totalAmount: totalAmount,
      advanceAmount: advanceAmount,
      fullyPaid: fullyPaid,
      orderStatus: orderStatus,
      orderTakenBy: orderTakenBy,
      trackInfo: trackInfo,
      customerId: customerId,
      branchId: branchId,
      deliveryDate: deliveryDate,
      deliveryTime: deliveryTime,
      createdOn: createdOn,
      totalWeight: totalWeight,
      totalQty: totalQty,
      statusRemark: statusRemark,
      statusChangeHistory: statusChangeHistory != null ? List<OrderStatusChangeHistory>.unmodifiable(statusChangeHistory) : statusChangeHistory,
      orderDetails: orderDetails != null ? List<OrderArchiveDetail>.unmodifiable(orderDetails) : orderDetails,
      orderFormNo: orderFormNo);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveOrder &&
      id == other.id &&
      _orderId == other._orderId &&
      _dateTime == other._dateTime &&
      _deliveredDatetime == other._deliveredDatetime &&
      _totalOrderAmount == other._totalOrderAmount &&
      _ugstAmount == other._ugstAmount &&
      _roundOffAmount == other._roundOffAmount &&
      _discountPercentage == other._discountPercentage &&
      _discountAmount == other._discountAmount &&
      _totalAmount == other._totalAmount &&
      _advanceAmount == other._advanceAmount &&
      _fullyPaid == other._fullyPaid &&
      _orderStatus == other._orderStatus &&
      _orderTakenBy == other._orderTakenBy &&
      _trackInfo == other._trackInfo &&
      _customerId == other._customerId &&
      _branchId == other._branchId &&
      _deliveryDate == other._deliveryDate &&
      _deliveryTime == other._deliveryTime &&
      _createdOn == other._createdOn &&
      _totalWeight == other._totalWeight &&
      _totalQty == other._totalQty &&
      _statusRemark == other._statusRemark &&
      DeepCollectionEquality().equals(_statusChangeHistory, other._statusChangeHistory) &&
      DeepCollectionEquality().equals(_orderDetails, other._orderDetails) &&
      _orderFormNo == other._orderFormNo;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ArchiveOrder {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("orderId=" + "$_orderId" + ", ");
    buffer.write("dateTime=" + (_dateTime != null ? _dateTime!.format() : "null") + ", ");
    buffer.write("deliveredDatetime=" + "$_deliveredDatetime" + ", ");
    buffer.write("totalOrderAmount=" + (_totalOrderAmount != null ? _totalOrderAmount!.toString() : "null") + ", ");
    buffer.write("ugstAmount=" + (_ugstAmount != null ? _ugstAmount!.toString() : "null") + ", ");
    buffer.write("roundOffAmount=" + (_roundOffAmount != null ? _roundOffAmount!.toString() : "null") + ", ");
    buffer.write("discountPercentage=" + (_discountPercentage != null ? _discountPercentage!.toString() : "null") + ", ");
    buffer.write("discountAmount=" + (_discountAmount != null ? _discountAmount!.toString() : "null") + ", ");
    buffer.write("totalAmount=" + (_totalAmount != null ? _totalAmount!.toString() : "null") + ", ");
    buffer.write("advanceAmount=" + (_advanceAmount != null ? _advanceAmount!.toString() : "null") + ", ");
    buffer.write("fullyPaid=" + (_fullyPaid != null ? _fullyPaid!.toString() : "null") + ", ");
    buffer.write("orderStatus=" + (_orderStatus != null ? amplify_core.enumToString(_orderStatus)! : "null") + ", ");
    buffer.write("orderTakenBy=" + "$_orderTakenBy" + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("customerId=" + "$_customerId" + ", ");
    buffer.write("branchId=" + "$_branchId" + ", ");
    buffer.write("deliveryDate=" + (_deliveryDate != null ? _deliveryDate!.format() : "null") + ", ");
    buffer.write("deliveryTime=" + (_deliveryTime != null ? _deliveryTime!.format() : "null") + ", ");
    buffer.write("createdOn=" + (_createdOn != null ? _createdOn!.format() : "null") + ", ");
    buffer.write("totalWeight=" + (_totalWeight != null ? _totalWeight!.toString() : "null") + ", ");
    buffer.write("totalQty=" + (_totalQty != null ? _totalQty!.toString() : "null") + ", ");
    buffer.write("statusRemark=" + "$_statusRemark" + ", ");
    buffer.write("statusChangeHistory=" + (_statusChangeHistory != null ? _statusChangeHistory!.toString() : "null") + ", ");
    buffer.write("orderFormNo=" + "$_orderFormNo" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ArchiveOrder copyWith({String? orderId, amplify_core.TemporalDateTime? dateTime, String? deliveredDatetime, double? totalOrderAmount, double? ugstAmount, double? roundOffAmount, double? discountPercentage, double? discountAmount, double? totalAmount, double? advanceAmount, bool? fullyPaid, OrderStatus? orderStatus, String? orderTakenBy, TrackInfo? trackInfo, String? customerId, String? branchId, amplify_core.TemporalDate? deliveryDate, amplify_core.TemporalTime? deliveryTime, amplify_core.TemporalDateTime? createdOn, double? totalWeight, int? totalQty, String? statusRemark, List<OrderStatusChangeHistory>? statusChangeHistory, List<OrderArchiveDetail>? orderDetails, String? orderFormNo}) {
    return ArchiveOrder._internal(
      id: id,
      orderId: orderId ?? this.orderId,
      dateTime: dateTime ?? this.dateTime,
      deliveredDatetime: deliveredDatetime ?? this.deliveredDatetime,
      totalOrderAmount: totalOrderAmount ?? this.totalOrderAmount,
      ugstAmount: ugstAmount ?? this.ugstAmount,
      roundOffAmount: roundOffAmount ?? this.roundOffAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmount: discountAmount ?? this.discountAmount,
      totalAmount: totalAmount ?? this.totalAmount,
      advanceAmount: advanceAmount ?? this.advanceAmount,
      fullyPaid: fullyPaid ?? this.fullyPaid,
      orderStatus: orderStatus ?? this.orderStatus,
      orderTakenBy: orderTakenBy ?? this.orderTakenBy,
      trackInfo: trackInfo ?? this.trackInfo,
      customerId: customerId ?? this.customerId,
      branchId: branchId ?? this.branchId,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      createdOn: createdOn ?? this.createdOn,
      totalWeight: totalWeight ?? this.totalWeight,
      totalQty: totalQty ?? this.totalQty,
      statusRemark: statusRemark ?? this.statusRemark,
      statusChangeHistory: statusChangeHistory ?? this.statusChangeHistory,
      orderDetails: orderDetails ?? this.orderDetails,
      orderFormNo: orderFormNo ?? this.orderFormNo);
  }
  
  ArchiveOrder copyWithModelFieldValues({
    ModelFieldValue<String?>? orderId,
    ModelFieldValue<amplify_core.TemporalDateTime?>? dateTime,
    ModelFieldValue<String?>? deliveredDatetime,
    ModelFieldValue<double?>? totalOrderAmount,
    ModelFieldValue<double?>? ugstAmount,
    ModelFieldValue<double?>? roundOffAmount,
    ModelFieldValue<double?>? discountPercentage,
    ModelFieldValue<double?>? discountAmount,
    ModelFieldValue<double?>? totalAmount,
    ModelFieldValue<double?>? advanceAmount,
    ModelFieldValue<bool?>? fullyPaid,
    ModelFieldValue<OrderStatus?>? orderStatus,
    ModelFieldValue<String?>? orderTakenBy,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<String?>? customerId,
    ModelFieldValue<String?>? branchId,
    ModelFieldValue<amplify_core.TemporalDate?>? deliveryDate,
    ModelFieldValue<amplify_core.TemporalTime?>? deliveryTime,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdOn,
    ModelFieldValue<double?>? totalWeight,
    ModelFieldValue<int?>? totalQty,
    ModelFieldValue<String?>? statusRemark,
    ModelFieldValue<List<OrderStatusChangeHistory>?>? statusChangeHistory,
    ModelFieldValue<List<OrderArchiveDetail>?>? orderDetails,
    ModelFieldValue<String?>? orderFormNo
  }) {
    return ArchiveOrder._internal(
      id: id,
      orderId: orderId == null ? this.orderId : orderId.value,
      dateTime: dateTime == null ? this.dateTime : dateTime.value,
      deliveredDatetime: deliveredDatetime == null ? this.deliveredDatetime : deliveredDatetime.value,
      totalOrderAmount: totalOrderAmount == null ? this.totalOrderAmount : totalOrderAmount.value,
      ugstAmount: ugstAmount == null ? this.ugstAmount : ugstAmount.value,
      roundOffAmount: roundOffAmount == null ? this.roundOffAmount : roundOffAmount.value,
      discountPercentage: discountPercentage == null ? this.discountPercentage : discountPercentage.value,
      discountAmount: discountAmount == null ? this.discountAmount : discountAmount.value,
      totalAmount: totalAmount == null ? this.totalAmount : totalAmount.value,
      advanceAmount: advanceAmount == null ? this.advanceAmount : advanceAmount.value,
      fullyPaid: fullyPaid == null ? this.fullyPaid : fullyPaid.value,
      orderStatus: orderStatus == null ? this.orderStatus : orderStatus.value,
      orderTakenBy: orderTakenBy == null ? this.orderTakenBy : orderTakenBy.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      customerId: customerId == null ? this.customerId : customerId.value,
      branchId: branchId == null ? this.branchId : branchId.value,
      deliveryDate: deliveryDate == null ? this.deliveryDate : deliveryDate.value,
      deliveryTime: deliveryTime == null ? this.deliveryTime : deliveryTime.value,
      createdOn: createdOn == null ? this.createdOn : createdOn.value,
      totalWeight: totalWeight == null ? this.totalWeight : totalWeight.value,
      totalQty: totalQty == null ? this.totalQty : totalQty.value,
      statusRemark: statusRemark == null ? this.statusRemark : statusRemark.value,
      statusChangeHistory: statusChangeHistory == null ? this.statusChangeHistory : statusChangeHistory.value,
      orderDetails: orderDetails == null ? this.orderDetails : orderDetails.value,
      orderFormNo: orderFormNo == null ? this.orderFormNo : orderFormNo.value
    );
  }
  
  ArchiveOrder.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _orderId = json['orderId'],
      _dateTime = json['dateTime'] != null ? amplify_core.TemporalDateTime.fromString(json['dateTime']) : null,
      _deliveredDatetime = json['deliveredDatetime'],
      _totalOrderAmount = (json['totalOrderAmount'] as num?)?.toDouble(),
      _ugstAmount = (json['ugstAmount'] as num?)?.toDouble(),
      _roundOffAmount = (json['roundOffAmount'] as num?)?.toDouble(),
      _discountPercentage = (json['discountPercentage'] as num?)?.toDouble(),
      _discountAmount = (json['discountAmount'] as num?)?.toDouble(),
      _totalAmount = (json['totalAmount'] as num?)?.toDouble(),
      _advanceAmount = (json['advanceAmount'] as num?)?.toDouble(),
      _fullyPaid = json['fullyPaid'],
      _orderStatus = amplify_core.enumFromString<OrderStatus>(json['orderStatus'], OrderStatus.values),
      _orderTakenBy = json['orderTakenBy'],
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _customerId = json['customerId'],
      _branchId = json['branchId'],
      _deliveryDate = json['deliveryDate'] != null ? amplify_core.TemporalDate.fromString(json['deliveryDate']) : null,
      _deliveryTime = json['deliveryTime'] != null ? amplify_core.TemporalTime.fromString(json['deliveryTime']) : null,
      _createdOn = json['createdOn'] != null ? amplify_core.TemporalDateTime.fromString(json['createdOn']) : null,
      _totalWeight = (json['totalWeight'] as num?)?.toDouble(),
      _totalQty = (json['totalQty'] as num?)?.toInt(),
      _statusRemark = json['statusRemark'],
      _statusChangeHistory = json['statusChangeHistory'] is List
        ? (json['statusChangeHistory'] as List)
          .where((e) => e != null)
          .map((e) => OrderStatusChangeHistory.fromJson(new Map<String, dynamic>.from(e['serializedData'] ?? e)))
          .toList()
        : null,
      _orderDetails = json['orderDetails']  is Map
        ? (json['orderDetails']['items'] is List
          ? (json['orderDetails']['items'] as List)
              .where((e) => e != null)
              .map((e) => OrderArchiveDetail.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['orderDetails'] is List
          ? (json['orderDetails'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => OrderArchiveDetail.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _orderFormNo = json['orderFormNo'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'orderId': _orderId, 'dateTime': _dateTime?.format(), 'deliveredDatetime': _deliveredDatetime, 'totalOrderAmount': _totalOrderAmount, 'ugstAmount': _ugstAmount, 'roundOffAmount': _roundOffAmount, 'discountPercentage': _discountPercentage, 'discountAmount': _discountAmount, 'totalAmount': _totalAmount, 'advanceAmount': _advanceAmount, 'fullyPaid': _fullyPaid, 'orderStatus': amplify_core.enumToString(_orderStatus), 'orderTakenBy': _orderTakenBy, 'trackInfo': _trackInfo?.toJson(), 'customerId': _customerId, 'branchId': _branchId, 'deliveryDate': _deliveryDate?.format(), 'deliveryTime': _deliveryTime?.format(), 'createdOn': _createdOn?.format(), 'totalWeight': _totalWeight, 'totalQty': _totalQty, 'statusRemark': _statusRemark, 'statusChangeHistory': _statusChangeHistory?.map((OrderStatusChangeHistory? e) => e?.toJson()).toList(), 'orderDetails': _orderDetails?.map((OrderArchiveDetail? e) => e?.toJson()).toList(), 'orderFormNo': _orderFormNo, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'orderId': _orderId,
    'dateTime': _dateTime,
    'deliveredDatetime': _deliveredDatetime,
    'totalOrderAmount': _totalOrderAmount,
    'ugstAmount': _ugstAmount,
    'roundOffAmount': _roundOffAmount,
    'discountPercentage': _discountPercentage,
    'discountAmount': _discountAmount,
    'totalAmount': _totalAmount,
    'advanceAmount': _advanceAmount,
    'fullyPaid': _fullyPaid,
    'orderStatus': _orderStatus,
    'orderTakenBy': _orderTakenBy,
    'trackInfo': _trackInfo,
    'customerId': _customerId,
    'branchId': _branchId,
    'deliveryDate': _deliveryDate,
    'deliveryTime': _deliveryTime,
    'createdOn': _createdOn,
    'totalWeight': _totalWeight,
    'totalQty': _totalQty,
    'statusRemark': _statusRemark,
    'statusChangeHistory': _statusChangeHistory,
    'orderDetails': _orderDetails,
    'orderFormNo': _orderFormNo,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ArchiveOrderModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ArchiveOrderModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ORDERID = amplify_core.QueryField(fieldName: "orderId");
  static final DATETIME = amplify_core.QueryField(fieldName: "dateTime");
  static final DELIVEREDDATETIME = amplify_core.QueryField(fieldName: "deliveredDatetime");
  static final TOTALORDERAMOUNT = amplify_core.QueryField(fieldName: "totalOrderAmount");
  static final UGSTAMOUNT = amplify_core.QueryField(fieldName: "ugstAmount");
  static final ROUNDOFFAMOUNT = amplify_core.QueryField(fieldName: "roundOffAmount");
  static final DISCOUNTPERCENTAGE = amplify_core.QueryField(fieldName: "discountPercentage");
  static final DISCOUNTAMOUNT = amplify_core.QueryField(fieldName: "discountAmount");
  static final TOTALAMOUNT = amplify_core.QueryField(fieldName: "totalAmount");
  static final ADVANCEAMOUNT = amplify_core.QueryField(fieldName: "advanceAmount");
  static final FULLYPAID = amplify_core.QueryField(fieldName: "fullyPaid");
  static final ORDERSTATUS = amplify_core.QueryField(fieldName: "orderStatus");
  static final ORDERTAKENBY = amplify_core.QueryField(fieldName: "orderTakenBy");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final CUSTOMERID = amplify_core.QueryField(fieldName: "customerId");
  static final BRANCHID = amplify_core.QueryField(fieldName: "branchId");
  static final DELIVERYDATE = amplify_core.QueryField(fieldName: "deliveryDate");
  static final DELIVERYTIME = amplify_core.QueryField(fieldName: "deliveryTime");
  static final CREATEDON = amplify_core.QueryField(fieldName: "createdOn");
  static final TOTALWEIGHT = amplify_core.QueryField(fieldName: "totalWeight");
  static final TOTALQTY = amplify_core.QueryField(fieldName: "totalQty");
  static final STATUSREMARK = amplify_core.QueryField(fieldName: "statusRemark");
  static final STATUSCHANGEHISTORY = amplify_core.QueryField(fieldName: "statusChangeHistory");
  static final ORDERDETAILS = amplify_core.QueryField(
    fieldName: "orderDetails",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'OrderArchiveDetail'));
  static final ORDERFORMNO = amplify_core.QueryField(fieldName: "orderFormNo");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ArchiveOrder";
    modelSchemaDefinition.pluralName = "ArchiveOrders";
    
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
      key: ArchiveOrder.ORDERID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DATETIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DELIVEREDDATETIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.TOTALORDERAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.UGSTAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.ROUNDOFFAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DISCOUNTPERCENTAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DISCOUNTAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.TOTALAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.ADVANCEAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.FULLYPAID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.ORDERSTATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.ORDERTAKENBY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.CUSTOMERID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.BRANCHID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DELIVERYDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.DELIVERYTIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.CREATEDON,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.TOTALWEIGHT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.TOTALQTY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.STATUSREMARK,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'statusChangeHistory',
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'OrderStatusChangeHistory')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: ArchiveOrder.ORDERDETAILS,
      isRequired: false,
      ofModelName: 'OrderArchiveDetail',
      associatedKey: OrderArchiveDetail.ARCHIVEORDERID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ArchiveOrder.ORDERFORMNO,
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
  });
}

class _ArchiveOrderModelType extends amplify_core.ModelType<ArchiveOrder> {
  const _ArchiveOrderModelType();
  
  @override
  ArchiveOrder fromJson(Map<String, dynamic> jsonData) {
    return ArchiveOrder.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ArchiveOrder';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ArchiveOrder] in your schema.
 */
class ArchiveOrderModelIdentifier implements amplify_core.ModelIdentifier<ArchiveOrder> {
  final String id;

  /** Create an instance of ArchiveOrderModelIdentifier using [id] the primary key. */
  const ArchiveOrderModelIdentifier({
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
  String toString() => 'ArchiveOrderModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ArchiveOrderModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}