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


/** This is an auto generated class representing the OrderDetail type in your schema. */
class OrderDetail extends amplify_core.Model {
  static const classType = const _OrderDetailModelType();
  final String id;
  final String? _itemId;
  final double? _weight;
  final int? _qty;
  final DieteryType? _dieteryType;
  final String? _flavourId;
  final ShapeType? _shape;
  final String? _customerMessage;
  final String? _customisationMessage;
  final double? _pricePerQty;
  final double? _totalAmount;
  final String? _orderId;
  final double? _fondantCake;
  final int? _cupCakes;
  final int? _photoSheets;
  final TrackInfo? _trackInfo;
  final DieteryType? _fondantDieteryType;
  final DieteryType? _cupcakeDieteryType;
  final FondantType? _fondantType;
  final PhotoSheetType? _photoSheetType;
  final CupcakeType? _cupcakeType;
  final double? _fondantPrice;
  final double? _cupCakePrice;
  final double? _photoSheetPrice;
  final double? _dollDecorationPrice;
  final bool? _dollOtherDecoration;
  final String? _modelNo;
  final String? _imageKey;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  OrderDetailModelIdentifier get modelIdentifier {
      return OrderDetailModelIdentifier(
        id: id
      );
  }
  
  String? get itemId {
    return _itemId;
  }
  
  double? get weight {
    return _weight;
  }
  
  int? get qty {
    return _qty;
  }
  
  DieteryType? get dieteryType {
    return _dieteryType;
  }
  
  String? get flavourId {
    return _flavourId;
  }
  
  ShapeType? get shape {
    return _shape;
  }
  
  String? get customerMessage {
    return _customerMessage;
  }
  
  String? get customisationMessage {
    return _customisationMessage;
  }
  
  double? get pricePerQty {
    return _pricePerQty;
  }
  
  double? get totalAmount {
    return _totalAmount;
  }
  
  String get orderId {
    try {
      return _orderId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double? get fondantCake {
    return _fondantCake;
  }
  
  int? get cupCakes {
    return _cupCakes;
  }
  
  int? get photoSheets {
    return _photoSheets;
  }
  
  TrackInfo? get trackInfo {
    return _trackInfo;
  }
  
  DieteryType? get fondantDieteryType {
    return _fondantDieteryType;
  }
  
  DieteryType? get cupcakeDieteryType {
    return _cupcakeDieteryType;
  }
  
  FondantType? get fondantType {
    return _fondantType;
  }
  
  PhotoSheetType? get photoSheetType {
    return _photoSheetType;
  }
  
  CupcakeType? get cupcakeType {
    return _cupcakeType;
  }
  
  double? get fondantPrice {
    return _fondantPrice;
  }
  
  double? get cupCakePrice {
    return _cupCakePrice;
  }
  
  double? get photoSheetPrice {
    return _photoSheetPrice;
  }
  
  double? get dollDecorationPrice {
    return _dollDecorationPrice;
  }
  
  bool? get dollOtherDecoration {
    return _dollOtherDecoration;
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
  
  const OrderDetail._internal({required this.id, itemId, weight, qty, dieteryType, flavourId, shape, customerMessage, customisationMessage, pricePerQty, totalAmount, required orderId, fondantCake, cupCakes, photoSheets, trackInfo, fondantDieteryType, cupcakeDieteryType, fondantType, photoSheetType, cupcakeType, fondantPrice, cupCakePrice, photoSheetPrice, dollDecorationPrice, dollOtherDecoration, modelNo, imageKey, createdAt, updatedAt}): _itemId = itemId, _weight = weight, _qty = qty, _dieteryType = dieteryType, _flavourId = flavourId, _shape = shape, _customerMessage = customerMessage, _customisationMessage = customisationMessage, _pricePerQty = pricePerQty, _totalAmount = totalAmount, _orderId = orderId, _fondantCake = fondantCake, _cupCakes = cupCakes, _photoSheets = photoSheets, _trackInfo = trackInfo, _fondantDieteryType = fondantDieteryType, _cupcakeDieteryType = cupcakeDieteryType, _fondantType = fondantType, _photoSheetType = photoSheetType, _cupcakeType = cupcakeType, _fondantPrice = fondantPrice, _cupCakePrice = cupCakePrice, _photoSheetPrice = photoSheetPrice, _dollDecorationPrice = dollDecorationPrice, _dollOtherDecoration = dollOtherDecoration, _modelNo = modelNo, _imageKey = imageKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory OrderDetail({String? id, String? itemId, double? weight, int? qty, DieteryType? dieteryType, String? flavourId, ShapeType? shape, String? customerMessage, String? customisationMessage, double? pricePerQty, double? totalAmount, required String orderId, double? fondantCake, int? cupCakes, int? photoSheets, TrackInfo? trackInfo, DieteryType? fondantDieteryType, DieteryType? cupcakeDieteryType, FondantType? fondantType, PhotoSheetType? photoSheetType, CupcakeType? cupcakeType, double? fondantPrice, double? cupCakePrice, double? photoSheetPrice, double? dollDecorationPrice, bool? dollOtherDecoration, String? modelNo, String? imageKey}) {
    return OrderDetail._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      itemId: itemId,
      weight: weight,
      qty: qty,
      dieteryType: dieteryType,
      flavourId: flavourId,
      shape: shape,
      customerMessage: customerMessage,
      customisationMessage: customisationMessage,
      pricePerQty: pricePerQty,
      totalAmount: totalAmount,
      orderId: orderId,
      fondantCake: fondantCake,
      cupCakes: cupCakes,
      photoSheets: photoSheets,
      trackInfo: trackInfo,
      fondantDieteryType: fondantDieteryType,
      cupcakeDieteryType: cupcakeDieteryType,
      fondantType: fondantType,
      photoSheetType: photoSheetType,
      cupcakeType: cupcakeType,
      fondantPrice: fondantPrice,
      cupCakePrice: cupCakePrice,
      photoSheetPrice: photoSheetPrice,
      dollDecorationPrice: dollDecorationPrice,
      dollOtherDecoration: dollOtherDecoration,
      modelNo: modelNo,
      imageKey: imageKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetail &&
      id == other.id &&
      _itemId == other._itemId &&
      _weight == other._weight &&
      _qty == other._qty &&
      _dieteryType == other._dieteryType &&
      _flavourId == other._flavourId &&
      _shape == other._shape &&
      _customerMessage == other._customerMessage &&
      _customisationMessage == other._customisationMessage &&
      _pricePerQty == other._pricePerQty &&
      _totalAmount == other._totalAmount &&
      _orderId == other._orderId &&
      _fondantCake == other._fondantCake &&
      _cupCakes == other._cupCakes &&
      _photoSheets == other._photoSheets &&
      _trackInfo == other._trackInfo &&
      _fondantDieteryType == other._fondantDieteryType &&
      _cupcakeDieteryType == other._cupcakeDieteryType &&
      _fondantType == other._fondantType &&
      _photoSheetType == other._photoSheetType &&
      _cupcakeType == other._cupcakeType &&
      _fondantPrice == other._fondantPrice &&
      _cupCakePrice == other._cupCakePrice &&
      _photoSheetPrice == other._photoSheetPrice &&
      _dollDecorationPrice == other._dollDecorationPrice &&
      _dollOtherDecoration == other._dollOtherDecoration &&
      _modelNo == other._modelNo &&
      _imageKey == other._imageKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OrderDetail {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("itemId=" + "$_itemId" + ", ");
    buffer.write("weight=" + (_weight != null ? _weight!.toString() : "null") + ", ");
    buffer.write("qty=" + (_qty != null ? _qty!.toString() : "null") + ", ");
    buffer.write("dieteryType=" + (_dieteryType != null ? amplify_core.enumToString(_dieteryType)! : "null") + ", ");
    buffer.write("flavourId=" + "$_flavourId" + ", ");
    buffer.write("shape=" + (_shape != null ? amplify_core.enumToString(_shape)! : "null") + ", ");
    buffer.write("customerMessage=" + "$_customerMessage" + ", ");
    buffer.write("customisationMessage=" + "$_customisationMessage" + ", ");
    buffer.write("pricePerQty=" + (_pricePerQty != null ? _pricePerQty!.toString() : "null") + ", ");
    buffer.write("totalAmount=" + (_totalAmount != null ? _totalAmount!.toString() : "null") + ", ");
    buffer.write("orderId=" + "$_orderId" + ", ");
    buffer.write("fondantCake=" + (_fondantCake != null ? _fondantCake!.toString() : "null") + ", ");
    buffer.write("cupCakes=" + (_cupCakes != null ? _cupCakes!.toString() : "null") + ", ");
    buffer.write("photoSheets=" + (_photoSheets != null ? _photoSheets!.toString() : "null") + ", ");
    buffer.write("trackInfo=" + (_trackInfo != null ? _trackInfo!.toString() : "null") + ", ");
    buffer.write("fondantDieteryType=" + (_fondantDieteryType != null ? amplify_core.enumToString(_fondantDieteryType)! : "null") + ", ");
    buffer.write("cupcakeDieteryType=" + (_cupcakeDieteryType != null ? amplify_core.enumToString(_cupcakeDieteryType)! : "null") + ", ");
    buffer.write("fondantType=" + (_fondantType != null ? amplify_core.enumToString(_fondantType)! : "null") + ", ");
    buffer.write("photoSheetType=" + (_photoSheetType != null ? amplify_core.enumToString(_photoSheetType)! : "null") + ", ");
    buffer.write("cupcakeType=" + (_cupcakeType != null ? amplify_core.enumToString(_cupcakeType)! : "null") + ", ");
    buffer.write("fondantPrice=" + (_fondantPrice != null ? _fondantPrice!.toString() : "null") + ", ");
    buffer.write("cupCakePrice=" + (_cupCakePrice != null ? _cupCakePrice!.toString() : "null") + ", ");
    buffer.write("photoSheetPrice=" + (_photoSheetPrice != null ? _photoSheetPrice!.toString() : "null") + ", ");
    buffer.write("dollDecorationPrice=" + (_dollDecorationPrice != null ? _dollDecorationPrice!.toString() : "null") + ", ");
    buffer.write("dollOtherDecoration=" + (_dollOtherDecoration != null ? _dollOtherDecoration!.toString() : "null") + ", ");
    buffer.write("modelNo=" + "$_modelNo" + ", ");
    buffer.write("imageKey=" + "$_imageKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OrderDetail copyWith({String? itemId, double? weight, int? qty, DieteryType? dieteryType, String? flavourId, ShapeType? shape, String? customerMessage, String? customisationMessage, double? pricePerQty, double? totalAmount, String? orderId, double? fondantCake, int? cupCakes, int? photoSheets, TrackInfo? trackInfo, DieteryType? fondantDieteryType, DieteryType? cupcakeDieteryType, FondantType? fondantType, PhotoSheetType? photoSheetType, CupcakeType? cupcakeType, double? fondantPrice, double? cupCakePrice, double? photoSheetPrice, double? dollDecorationPrice, bool? dollOtherDecoration, String? modelNo, String? imageKey}) {
    return OrderDetail._internal(
      id: id,
      itemId: itemId ?? this.itemId,
      weight: weight ?? this.weight,
      qty: qty ?? this.qty,
      dieteryType: dieteryType ?? this.dieteryType,
      flavourId: flavourId ?? this.flavourId,
      shape: shape ?? this.shape,
      customerMessage: customerMessage ?? this.customerMessage,
      customisationMessage: customisationMessage ?? this.customisationMessage,
      pricePerQty: pricePerQty ?? this.pricePerQty,
      totalAmount: totalAmount ?? this.totalAmount,
      orderId: orderId ?? this.orderId,
      fondantCake: fondantCake ?? this.fondantCake,
      cupCakes: cupCakes ?? this.cupCakes,
      photoSheets: photoSheets ?? this.photoSheets,
      trackInfo: trackInfo ?? this.trackInfo,
      fondantDieteryType: fondantDieteryType ?? this.fondantDieteryType,
      cupcakeDieteryType: cupcakeDieteryType ?? this.cupcakeDieteryType,
      fondantType: fondantType ?? this.fondantType,
      photoSheetType: photoSheetType ?? this.photoSheetType,
      cupcakeType: cupcakeType ?? this.cupcakeType,
      fondantPrice: fondantPrice ?? this.fondantPrice,
      cupCakePrice: cupCakePrice ?? this.cupCakePrice,
      photoSheetPrice: photoSheetPrice ?? this.photoSheetPrice,
      dollDecorationPrice: dollDecorationPrice ?? this.dollDecorationPrice,
      dollOtherDecoration: dollOtherDecoration ?? this.dollOtherDecoration,
      modelNo: modelNo ?? this.modelNo,
      imageKey: imageKey ?? this.imageKey);
  }
  
  OrderDetail copyWithModelFieldValues({
    ModelFieldValue<String?>? itemId,
    ModelFieldValue<double?>? weight,
    ModelFieldValue<int?>? qty,
    ModelFieldValue<DieteryType?>? dieteryType,
    ModelFieldValue<String?>? flavourId,
    ModelFieldValue<ShapeType?>? shape,
    ModelFieldValue<String?>? customerMessage,
    ModelFieldValue<String?>? customisationMessage,
    ModelFieldValue<double?>? pricePerQty,
    ModelFieldValue<double?>? totalAmount,
    ModelFieldValue<String>? orderId,
    ModelFieldValue<double?>? fondantCake,
    ModelFieldValue<int?>? cupCakes,
    ModelFieldValue<int?>? photoSheets,
    ModelFieldValue<TrackInfo?>? trackInfo,
    ModelFieldValue<DieteryType?>? fondantDieteryType,
    ModelFieldValue<DieteryType?>? cupcakeDieteryType,
    ModelFieldValue<FondantType?>? fondantType,
    ModelFieldValue<PhotoSheetType?>? photoSheetType,
    ModelFieldValue<CupcakeType?>? cupcakeType,
    ModelFieldValue<double?>? fondantPrice,
    ModelFieldValue<double?>? cupCakePrice,
    ModelFieldValue<double?>? photoSheetPrice,
    ModelFieldValue<double?>? dollDecorationPrice,
    ModelFieldValue<bool?>? dollOtherDecoration,
    ModelFieldValue<String?>? modelNo,
    ModelFieldValue<String?>? imageKey
  }) {
    return OrderDetail._internal(
      id: id,
      itemId: itemId == null ? this.itemId : itemId.value,
      weight: weight == null ? this.weight : weight.value,
      qty: qty == null ? this.qty : qty.value,
      dieteryType: dieteryType == null ? this.dieteryType : dieteryType.value,
      flavourId: flavourId == null ? this.flavourId : flavourId.value,
      shape: shape == null ? this.shape : shape.value,
      customerMessage: customerMessage == null ? this.customerMessage : customerMessage.value,
      customisationMessage: customisationMessage == null ? this.customisationMessage : customisationMessage.value,
      pricePerQty: pricePerQty == null ? this.pricePerQty : pricePerQty.value,
      totalAmount: totalAmount == null ? this.totalAmount : totalAmount.value,
      orderId: orderId == null ? this.orderId : orderId.value,
      fondantCake: fondantCake == null ? this.fondantCake : fondantCake.value,
      cupCakes: cupCakes == null ? this.cupCakes : cupCakes.value,
      photoSheets: photoSheets == null ? this.photoSheets : photoSheets.value,
      trackInfo: trackInfo == null ? this.trackInfo : trackInfo.value,
      fondantDieteryType: fondantDieteryType == null ? this.fondantDieteryType : fondantDieteryType.value,
      cupcakeDieteryType: cupcakeDieteryType == null ? this.cupcakeDieteryType : cupcakeDieteryType.value,
      fondantType: fondantType == null ? this.fondantType : fondantType.value,
      photoSheetType: photoSheetType == null ? this.photoSheetType : photoSheetType.value,
      cupcakeType: cupcakeType == null ? this.cupcakeType : cupcakeType.value,
      fondantPrice: fondantPrice == null ? this.fondantPrice : fondantPrice.value,
      cupCakePrice: cupCakePrice == null ? this.cupCakePrice : cupCakePrice.value,
      photoSheetPrice: photoSheetPrice == null ? this.photoSheetPrice : photoSheetPrice.value,
      dollDecorationPrice: dollDecorationPrice == null ? this.dollDecorationPrice : dollDecorationPrice.value,
      dollOtherDecoration: dollOtherDecoration == null ? this.dollOtherDecoration : dollOtherDecoration.value,
      modelNo: modelNo == null ? this.modelNo : modelNo.value,
      imageKey: imageKey == null ? this.imageKey : imageKey.value
    );
  }
  
  OrderDetail.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _itemId = json['itemId'],
      _weight = (json['weight'] as num?)?.toDouble(),
      _qty = (json['qty'] as num?)?.toInt(),
      _dieteryType = amplify_core.enumFromString<DieteryType>(json['dieteryType'], DieteryType.values),
      _flavourId = json['flavourId'],
      _shape = amplify_core.enumFromString<ShapeType>(json['shape'], ShapeType.values),
      _customerMessage = json['customerMessage'],
      _customisationMessage = json['customisationMessage'],
      _pricePerQty = (json['pricePerQty'] as num?)?.toDouble(),
      _totalAmount = (json['totalAmount'] as num?)?.toDouble(),
      _orderId = json['orderId'],
      _fondantCake = (json['fondantCake'] as num?)?.toDouble(),
      _cupCakes = (json['cupCakes'] as num?)?.toInt(),
      _photoSheets = (json['photoSheets'] as num?)?.toInt(),
      _trackInfo = json['trackInfo'] != null
          ? json['trackInfo']['serializedData'] != null
              ? TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']['serializedData']))
              : TrackInfo.fromJson(new Map<String, dynamic>.from(json['trackInfo']))
        : null,
      _fondantDieteryType = amplify_core.enumFromString<DieteryType>(json['fondantDieteryType'], DieteryType.values),
      _cupcakeDieteryType = amplify_core.enumFromString<DieteryType>(json['cupcakeDieteryType'], DieteryType.values),
      _fondantType = amplify_core.enumFromString<FondantType>(json['fondantType'], FondantType.values),
      _photoSheetType = amplify_core.enumFromString<PhotoSheetType>(json['photoSheetType'], PhotoSheetType.values),
      _cupcakeType = amplify_core.enumFromString<CupcakeType>(json['cupcakeType'], CupcakeType.values),
      _fondantPrice = (json['fondantPrice'] as num?)?.toDouble(),
      _cupCakePrice = (json['cupCakePrice'] as num?)?.toDouble(),
      _photoSheetPrice = (json['photoSheetPrice'] as num?)?.toDouble(),
      _dollDecorationPrice = (json['dollDecorationPrice'] as num?)?.toDouble(),
      _dollOtherDecoration = json['dollOtherDecoration'],
      _modelNo = json['modelNo'],
      _imageKey = json['imageKey'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'itemId': _itemId, 'weight': _weight, 'qty': _qty, 'dieteryType': amplify_core.enumToString(_dieteryType), 'flavourId': _flavourId, 'shape': amplify_core.enumToString(_shape), 'customerMessage': _customerMessage, 'customisationMessage': _customisationMessage, 'pricePerQty': _pricePerQty, 'totalAmount': _totalAmount, 'orderId': _orderId, 'fondantCake': _fondantCake, 'cupCakes': _cupCakes, 'photoSheets': _photoSheets, 'trackInfo': _trackInfo?.toJson(), 'fondantDieteryType': amplify_core.enumToString(_fondantDieteryType), 'cupcakeDieteryType': amplify_core.enumToString(_cupcakeDieteryType), 'fondantType': amplify_core.enumToString(_fondantType), 'photoSheetType': amplify_core.enumToString(_photoSheetType), 'cupcakeType': amplify_core.enumToString(_cupcakeType), 'fondantPrice': _fondantPrice, 'cupCakePrice': _cupCakePrice, 'photoSheetPrice': _photoSheetPrice, 'dollDecorationPrice': _dollDecorationPrice, 'dollOtherDecoration': _dollOtherDecoration, 'modelNo': _modelNo, 'imageKey': _imageKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'itemId': _itemId,
    'weight': _weight,
    'qty': _qty,
    'dieteryType': _dieteryType,
    'flavourId': _flavourId,
    'shape': _shape,
    'customerMessage': _customerMessage,
    'customisationMessage': _customisationMessage,
    'pricePerQty': _pricePerQty,
    'totalAmount': _totalAmount,
    'orderId': _orderId,
    'fondantCake': _fondantCake,
    'cupCakes': _cupCakes,
    'photoSheets': _photoSheets,
    'trackInfo': _trackInfo,
    'fondantDieteryType': _fondantDieteryType,
    'cupcakeDieteryType': _cupcakeDieteryType,
    'fondantType': _fondantType,
    'photoSheetType': _photoSheetType,
    'cupcakeType': _cupcakeType,
    'fondantPrice': _fondantPrice,
    'cupCakePrice': _cupCakePrice,
    'photoSheetPrice': _photoSheetPrice,
    'dollDecorationPrice': _dollDecorationPrice,
    'dollOtherDecoration': _dollOtherDecoration,
    'modelNo': _modelNo,
    'imageKey': _imageKey,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<OrderDetailModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<OrderDetailModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ITEMID = amplify_core.QueryField(fieldName: "itemId");
  static final WEIGHT = amplify_core.QueryField(fieldName: "weight");
  static final QTY = amplify_core.QueryField(fieldName: "qty");
  static final DIETERYTYPE = amplify_core.QueryField(fieldName: "dieteryType");
  static final FLAVOURID = amplify_core.QueryField(fieldName: "flavourId");
  static final SHAPE = amplify_core.QueryField(fieldName: "shape");
  static final CUSTOMERMESSAGE = amplify_core.QueryField(fieldName: "customerMessage");
  static final CUSTOMISATIONMESSAGE = amplify_core.QueryField(fieldName: "customisationMessage");
  static final PRICEPERQTY = amplify_core.QueryField(fieldName: "pricePerQty");
  static final TOTALAMOUNT = amplify_core.QueryField(fieldName: "totalAmount");
  static final ORDERID = amplify_core.QueryField(fieldName: "orderId");
  static final FONDANTCAKE = amplify_core.QueryField(fieldName: "fondantCake");
  static final CUPCAKES = amplify_core.QueryField(fieldName: "cupCakes");
  static final PHOTOSHEETS = amplify_core.QueryField(fieldName: "photoSheets");
  static final TRACKINFO = amplify_core.QueryField(fieldName: "trackInfo");
  static final FONDANTDIETERYTYPE = amplify_core.QueryField(fieldName: "fondantDieteryType");
  static final CUPCAKEDIETERYTYPE = amplify_core.QueryField(fieldName: "cupcakeDieteryType");
  static final FONDANTTYPE = amplify_core.QueryField(fieldName: "fondantType");
  static final PHOTOSHEETTYPE = amplify_core.QueryField(fieldName: "photoSheetType");
  static final CUPCAKETYPE = amplify_core.QueryField(fieldName: "cupcakeType");
  static final FONDANTPRICE = amplify_core.QueryField(fieldName: "fondantPrice");
  static final CUPCAKEPRICE = amplify_core.QueryField(fieldName: "cupCakePrice");
  static final PHOTOSHEETPRICE = amplify_core.QueryField(fieldName: "photoSheetPrice");
  static final DOLLDECORATIONPRICE = amplify_core.QueryField(fieldName: "dollDecorationPrice");
  static final DOLLOTHERDECORATION = amplify_core.QueryField(fieldName: "dollOtherDecoration");
  static final MODELNO = amplify_core.QueryField(fieldName: "modelNo");
  static final IMAGEKEY = amplify_core.QueryField(fieldName: "imageKey");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OrderDetail";
    modelSchemaDefinition.pluralName = "OrderDetails";
    
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
      amplify_core.ModelIndex(fields: const ["orderId"], name: "byOrder")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.ITEMID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.WEIGHT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.QTY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.DIETERYTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.FLAVOURID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.SHAPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUSTOMERMESSAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUSTOMISATIONMESSAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.PRICEPERQTY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.TOTALAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.ORDERID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.FONDANTCAKE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUPCAKES,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.PHOTOSHEETS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'trackInfo',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'TrackInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.FONDANTDIETERYTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUPCAKEDIETERYTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.FONDANTTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.PHOTOSHEETTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUPCAKETYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.FONDANTPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.CUPCAKEPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.PHOTOSHEETPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.DOLLDECORATIONPRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.DOLLOTHERDECORATION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.MODELNO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: OrderDetail.IMAGEKEY,
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

class _OrderDetailModelType extends amplify_core.ModelType<OrderDetail> {
  const _OrderDetailModelType();
  
  @override
  OrderDetail fromJson(Map<String, dynamic> jsonData) {
    return OrderDetail.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'OrderDetail';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [OrderDetail] in your schema.
 */
class OrderDetailModelIdentifier implements amplify_core.ModelIdentifier<OrderDetail> {
  final String id;

  /** Create an instance of OrderDetailModelIdentifier using [id] the primary key. */
  const OrderDetailModelIdentifier({
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
  String toString() => 'OrderDetailModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is OrderDetailModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}