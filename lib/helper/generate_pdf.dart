// {"tableName":"PostalCodeDet-owedb7vmjrfr3ccdfphwqycpt4-prod"}

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:testprint/helper/pos_printer_invoice.dart';
import 'package:testprint/models/ModelProvider.dart';

import '../gen/assets.gen.dart';
import '../model/new_order_model.dart';
import 'date_helper.dart';
import 'pos_invoice_view.dart';
import 'util.dart';
import '/models/Category.dart' as local;

class GeneratePdf {
  List<Item> items = [];
  List<AddOnItem> addOnItems = [];
  List<Branch> branches = [];
  List<CategoryFlavour> categoryFlavours = [];
  List<local.Category> categories = [];
  List<Customer> customers = [];
  List<Flavour> flavours = [];
  List<Order> orders = [];
  List<OrderDetail> ordersDetails = [];
  Uint8List? rupeelogoBytes,
      boldRupeelogoBytes,
      logoBytes,
      fssaiBytes,
      whiteRupeelogoBytes,
      whiteBoldRupeelogoBytes;

  Future<dynamic> generateNewInvoicePdf(Order? order,
      {required Branch? branch, bool posInvoice = true}) async {
    InvoiceModel? invoice =
        await _getInvoiceModel(order, branch: branch, posInvoice: posInvoice);
    inspect(invoice);
    if (invoice != null) {
      var pdf = await generatePosInvoiceView(
        invoice: invoice,
        logoBytes: logoBytes!,
        fssaiBytes: fssaiBytes!,
        rupeelogoBytes: rupeelogoBytes!,
        boldRupeelogoBytes: boldRupeelogoBytes!,
        addOnItems: addOnItems ?? [],
        isWeb: false,
      );

      return pdf;
    }
    return null;
  }

  Future<dynamic> generatePosPrinterPdfData(Order? order,
      {required Branch? branch, bool posInvoice = true}) async {
    InvoiceModel? invoice =
        await _getInvoiceModel(order, branch: branch, posInvoice: posInvoice);
    inspect(invoice);
    if (invoice != null) {
      var pdf = await generatePosPrinterInvoiceView(
        invoice: invoice,
        logoBytes: logoBytes!,
        fssaiBytes: fssaiBytes!,
        addOnItems: addOnItems ?? [],
      );

      return pdf;
    }
    return null;
  }

  Future<void> _fetchData() async {
    rupeelogoBytes ??= await _loadImageFromAssets(Assets.images.rupee.path);
    whiteRupeelogoBytes ??=
        await _loadImageFromAssets(Assets.images.rupeeWhite.path);
    whiteBoldRupeelogoBytes ??=
        await _loadImageFromAssets(Assets.images.rupeeWhiteBold.path);
    boldRupeelogoBytes ??=
        await _loadImageFromAssets(Assets.images.rupeeBold.path);
    logoBytes ??= await _loadImageFromAssets(Assets.images.tillaiLogo.path);
    fssaiBytes ??= await _loadImageFromAssets(Assets.images.fssai.path);
    if (items.isEmpty) {
      items = await _fetchItems();
    }
    if (addOnItems.isEmpty) {
      addOnItems = await _fetchAddOnItems();
    }
    if (branches.isEmpty) {
      branches = await _fetchBranch();
    }
    if (categoryFlavours.isEmpty) {
      categoryFlavours = await _fetchCategoryFlavour();
    }
    if (categories.isEmpty) {
      categories = await _fetchCategory();
    }
    if (customers.isEmpty) {
      customers = await _fetchCustomer();
    }
    if (flavours.isEmpty) {
      flavours = await _fetchFlavour();
    }
    if (orders.isEmpty) {
      orders = await _fetchOrder();
    }
    if (ordersDetails.isEmpty) {
      ordersDetails = await _fetchOrderDetail();
    }
  }

  Future<List<Item>> _fetchItems() async => await _fetchTypeData<Item>(
      Assets.bkpJson.item, (json) => Item.fromJson(json));
  Future<List<AddOnItem>> _fetchAddOnItems() async =>
      await _fetchTypeData<AddOnItem>(
          Assets.bkpJson.addonItem, (json) => AddOnItem.fromJson(json));
  Future<List<Branch>> _fetchBranch() async => await _fetchTypeData<Branch>(
      Assets.bkpJson.branch, (json) => Branch.fromJson(json));
  Future<List<CategoryFlavour>> _fetchCategoryFlavour() async =>
      await _fetchTypeData<CategoryFlavour>(Assets.bkpJson.categoryFlavour,
          (json) => CategoryFlavour.fromJson(json));
  Future<List<local.Category>> _fetchCategory() async =>
      await _fetchTypeData<local.Category>(
          Assets.bkpJson.category, (json) => local.Category.fromJson(json));
  Future<List<Customer>> _fetchCustomer() async =>
      await _fetchTypeData<Customer>(
          Assets.bkpJson.category, (json) => Customer.fromJson(json));
  Future<List<Flavour>> _fetchFlavour() async => await _fetchTypeData<Flavour>(
      Assets.bkpJson.flavour, (json) => Flavour.fromJson(json));
  Future<List<Order>> _fetchOrder() async => await _fetchTypeData<Order>(
      Assets.bkpJson.order, (json) => Order.fromJson(json));
  Future<List<OrderDetail>> _fetchOrderDetail() async =>
      await _fetchTypeData<OrderDetail>(
          Assets.bkpJson.orderDet, (json) => OrderDetail.fromJson(json));

  Future<List<T>> _fetchTypeData<T>(
      String assetPath, T Function(Map<String, dynamic>) fromJson) async {
    List<T> itemList = [];
    try {
      // Load JSON data from the asset file
      String jsonData = await Util.loadAsset(assetPath);

      // Parse the JSON string into a Map
      final Map<String, dynamic> jsonMap = jsonDecode(jsonData);

      // Extract the array (key `items` should match your JSON structure)
      final List<dynamic> jsonList = jsonMap['items'];

      // Convert each JSON map into a T object
      itemList = jsonList
          .map((json) => fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print("Error parsing item data: $e");
    }
    return itemList;
  }

  Future<InvoiceModel?> _getInvoiceModel(Order? order,
      {required Branch? branch, required bool posInvoice}) async {
    if (order != null) {
      await _fetchData();
      Customer? customer = await getItemFromListFuture(
          list: customers!, id: order.orderCustomerId!);
      customer ??= customers.first;
      List<InvoiceItem> invoiceItems = [];

      int totalNormalCupCakes = 0;
      int totalFcCupCakes = 0;
      // double totalFondantGrams = 0;
      int totalFullFondant = 0;
      int totalSemiFondant = 0;
      // int totalCupCakes = 0;
      // int totalEgglessCupCakes = 0;
      int totalFullPhotoSheets = 0;
      int totalHalfPhotoSheets = 0;
      int totalDollDecorations = 0;
      AddOnItem? fondantItem, cupCakeItem, photoSheetItem, dollDecorationItem;
      AddOnItem? fondantSemiItem,
          fondantFullItem,
          photoSheetFullItem,
          photoSheetHalfItem,
          cupcakeNormalItem,
          cupcakeFcItem,
          customDollDecorationItem;
      double fondantSemiItemUnitPrice = 0,
          fondantFullItemUnitPrice = 0,
          photoSheetFullItemUnitPrice = 0,
          photoSheetHalfItemUnitPrice = 0,
          cupcakeNormalItemUnitPrice = 0,
          cupcakeFcItemUnitPrice = 0,
          customDollDecorationItemUnitPrice = 0;
      if (!_isListNullOrEmpty(order.orderDetails)) {
        for (OrderDetail element in order.orderDetails!) {
          bool hasFondant = (element.fondantCake ?? 0) > 0;
          double fondantPrice = 0;
          double cupCakePrice = 0;
          double dollDecorationPrice = 0;
          double photoSheetPrice = 0;
          if (hasFondant && !_isListNullOrEmpty(addOnItems)) {
            FondantType fondantType =
                element.fondantType ?? FondantType.NOFONDANT;
            fondantItem = await _getAddOnItem(
                fondantType == FondantType.FULL
                    ? AddOnType.FULLFONDANT1KG
                    : AddOnType.SEMIFONDANT1KG,
                addOnItems!);
            if (fondantItem != null) {
              double unitPrice =
                  element.fondantPrice ?? (fondantItem.unitPrice ?? 0);
              fondantPrice = element.fondantPrice ?? 0;

              if (fondantType == FondantType.FULL) {
                fondantFullItemUnitPrice = unitPrice;
                fondantFullItem = fondantItem;
                totalFullFondant++;
              } else {
                fondantSemiItemUnitPrice = unitPrice;
                fondantSemiItem = fondantItem;
                totalSemiFondant++;
              }
            }
          }
          int cupCakes = element.cupCakes ?? 0;
          if (cupCakes > 0 && !_isListNullOrEmpty(addOnItems)) {
            CupcakeType cupcakeType = element.cupcakeType ?? CupcakeType.NORMAL;
            cupCakeItem = await _getAddOnItem(
                cupcakeType == CupcakeType.NORMAL
                    ? AddOnType.CUPCAKENORMAL
                    : AddOnType.CUPCAKEFC,
                addOnItems!);
            if (cupCakeItem != null) {
              double cupCakeUnitPrice = element.cupCakePrice ?? 0;

              // double caupCakeUnitPrice = element.cupcakeDieteryType != null &&
              //         element.fondantDieteryType! == DieteryType.EGGLESS
              //     ? (cupCakeItem.unitPriceEggless ?? 0)
              //     : (cupCakeItem.unitPrice ?? 0);
              cupCakePrice = cupCakeUnitPrice;
              // cupCakePrice = Util.getItemAmountWithoutTax(amount: cupCakePrice);
              if (cupcakeType == CupcakeType.NORMAL) {
                cupcakeNormalItem = cupCakeItem;
                totalNormalCupCakes += cupCakes;
                cupcakeNormalItemUnitPrice = cupCakePrice;
              } else {
                cupcakeFcItem = cupCakeItem;
                totalFcCupCakes += cupCakes;
                cupcakeFcItemUnitPrice = cupCakePrice;
              }
            }
          }
          int photoSheets = element.photoSheets ?? 0;
          if (photoSheets > 0 && !_isListNullOrEmpty(addOnItems)) {
            PhotoSheetType photoSheetType =
                element.photoSheetType ?? PhotoSheetType.HALF;
            photoSheetItem = await _getAddOnItem(
                photoSheetType == PhotoSheetType.HALF
                    ? AddOnType.PHOTOSHEETHALF
                    : AddOnType.PHOTOSHEETFULL,
                addOnItems!);

            if (photoSheetItem != null) {
              photoSheetPrice =
                  (element.photoSheetPrice ?? (photoSheetItem.unitPrice ?? 0));
              // photoSheetPrice = Util.getItemAmountWithoutTax(amount: photoSheetPrice);
              if (photoSheetType == PhotoSheetType.HALF) {
                photoSheetHalfItem = photoSheetItem;
                totalHalfPhotoSheets += photoSheets;
                photoSheetHalfItemUnitPrice = photoSheetPrice;
              } else {
                photoSheetFullItem = photoSheetItem;
                totalFullPhotoSheets += photoSheets;
                photoSheetFullItemUnitPrice = photoSheetPrice;
              }
            }
          }
          bool dollDecorationAdded = element.dollOtherDecoration ?? false;
          if (dollDecorationAdded) {
            dollDecorationItem =
                await _getAddOnItem(AddOnType.DOLLANDOTHER, addOnItems!);
            if (dollDecorationItem != null) {
              customDollDecorationItem = dollDecorationItem;
              // double price = Util.getItemAmountWithoutTax(
              //     amount: element.dollDecorationPrice ??
              //         (dollDecorationItem.unitPrice ?? 0));
              dollDecorationPrice = element.dollDecorationPrice ??
                  (dollDecorationItem.unitPrice ?? 0);
              totalDollDecorations++;
              customDollDecorationItemUnitPrice = dollDecorationPrice;
            }
          }
          Item? item =
              await getItemFromListFuture(list: items!, id: element.itemId!);
          if (item != null) {
            local.Category? category = await getItemFromListFuture(
                list: categories!, id: item.itemCategoryId!);
            Flavour? flavour = await getItemFromListFuture(
                list: flavours!, id: element.flavourId!);
            if (category == null || flavour == null) return null;
            double totalPriceIncludedAddons = (element.totalAmount ?? 0) +
                (photoSheets * photoSheetPrice) +
                fondantPrice +
                dollDecorationPrice;
            invoiceItems.add(
              InvoiceItem(
                name: item.name ?? '',
                orderDetail: element,
                weightStr: '${element.weight} Kg',
                weight: element.weight ?? 0,
                weightUnit: 'Kg',
                qty: '${element.qty}',
                // price: Util.formatAmount(element.totalAmount ?? 0),
                price: Util.formatAmount(totalPriceIncludedAddons),
                rate: Util.formatAmount(
                    (element.totalAmount ?? 0) / (element.qty ?? 0)),

                // price: '${_getTaxReducedAmount(element.totalAmount)}',
                // rate:
                //     '${_getTaxReducedAmount(element.totalAmount) / (element.qty ?? 0)}',

                hsnCode: item.hsnCode ?? '',
                category: category,
                flavour: flavour,
                shape: element.shape,
                isAddOnItem: false,
                dieteryType: element.dieteryType,
                customerMessage: element.customerMessage,
                customisationMsg: element.customisationMessage,
                // price: '$itemPriceWithoutAddOnItems',
              ),
            );
          }
        }
      }
      if (totalNormalCupCakes > 0) {
        invoiceItems.add(
          InvoiceItem(
            name: Util.toTitleCase(cupcakeNormalItem!.name ?? ''),
            weightStr: '',
            weightUnit: '',
            weight: 0,
            rateUnit: 'pc',
            qty: '$totalNormalCupCakes',
            price: '${cupcakeNormalItemUnitPrice * totalNormalCupCakes}',
            rate: '$cupcakeNormalItemUnitPrice',
            addOnItemCode: cupcakeNormalItem.code ?? '',
            hsnCode: cupcakeNormalItem.hsnCode ?? '',
            category: null,
            flavour: null,
            shape: null,
            isAddOnItem: true,
          ),
        );
      }

      if (totalFcCupCakes > 0) {
        invoiceItems.add(
          InvoiceItem(
            name: Util.toTitleCase(cupcakeFcItem!.name ?? ''),
            weightStr: '',
            weightUnit: '',
            weight: 0,
            rateUnit: 'pc',
            qty: '$totalFcCupCakes',
            price: '${cupcakeFcItemUnitPrice * totalFcCupCakes}',
            rate: '$cupcakeFcItemUnitPrice',
            addOnItemCode: cupcakeFcItem.code ?? '',
            hsnCode: cupcakeFcItem.hsnCode ?? '',
            category: null,
            flavour: null,
            shape: null,
            isAddOnItem: true,
          ),
        );
      }

      List<String> shopAddress = _getBranchAddress(branch, posInvoice);

      InvoiceModel invoice = InvoiceModel(
        items: invoiceItems,
        date: DateHelper.getUiDateTimeView(order.createdOn),
        time: '',
        invoiceNo: 'Inv-${order.orderId}',
        orderNo: '${order.orderId}',
        customer: customer,
        shopName: "TILLAI's BAKERY AND SWEETS",
        shopAdrress: shopAddress,
        disount: decimalRoundOff(order.discountAmount),
        totalPayable: decimalRoundOff(order.totalAmount),
        advanceAmt: decimalRoundOff(order.advanceAmount),
        totalAmt: decimalRoundOff(
            Util.getItemAmountWithTax(itemAmount: order.totalOrderAmount ?? 0)),
        // totalAmt: decimalRoundOff(order.totalOrderAmount),
        roundOffAmt: decimalRoundOff(order.roundOffAmount),
        taxAmt: decimalRoundOff(order.ugstAmount!),
        cgstAmt: decimalRoundOff(order.ugstAmount! / 2),
        cgstPercentage: '9',
        utgstPercentage: '9',
        orderFormNumber: order.orderFormNo,
        utstAmt: decimalRoundOff(order.ugstAmount! / 2),
        deliveryDateTimeStr:
            '${DateHelper.getUiFormatDateView(order.deliveryDate)} ${DateHelper.getUiFormaTimeView(order.deliveryTime)}',
        dueAmt: decimalRoundOff((order.fullyPaid ?? false)
            ? 0
            : (order.totalAmount ?? 0) - (order.advanceAmount ?? 0)),
        fssaiNo: '123456789',
        gstIn: '123456789',
      );
      return invoice;
    }
    return null;
  }

  Future<T?> getItemFromListFuture<T>(
      {required List<dynamic> list, required String id}) async {
    if (!_isListNullOrEmpty(list)) {
      for (var element in list) {
        if (element.id == id.trim()) {
          return element;
        }
      }
    }
    return null;
  }

  Future<AddOnItem?> _getAddOnItem(
      AddOnType type, List<AddOnItem> items) async {
    for (AddOnItem element in items) {
      if (element.addOnType == type) {
        return element;
      }
    }
    return null;
  }

  List<String> _getBranchAddress(Branch? branch, bool posInvoice) {
    List<String> addressArray = [];
    if (branch != null) {
      Address? address = branch.address;
      if (address != null) {
        // {"adrressLine1":"ABERDEEN BAZAAR","adrressLine2":"BABU LANE,PORT BLAIR ",
        //"building":"NO.3","country":"India","countryCode":"+91","pincode":"744101",
        //"state":"Andaman $ Nicobar Island","__typename":"Address"}

        // List<String> shopAddress = [
        //   'UV Towers, Tillai Bakery Phoniex',
        //   'Bay Road Port Blair',
        //   'Andaman and Nicobar Islands 744102',
        //   'Phone - 8900998800',
        //   'Email - tillaicoms.bakery@gmail.com',
        //   'GSTIN - 35ABYFA1184A1ZI',
        //   'FSSAI Licence No - 12916101000135'
        // ];
        String firstLine = '', secondLine = '';
        if (!_isStringNullOrEmpty(address.building)) {
          firstLine = address.building!;
        }
        if (!_isStringNullOrEmpty(address.adrressLine1)) {
          firstLine += ', ${address.adrressLine1}';
        }
        addressArray.add(Util.toTitleCase(firstLine));
        if (!_isStringNullOrEmpty(address.adrressLine2)) {
          addressArray.add(Util.toTitleCase(address.adrressLine2!));
        }
        if (!_isStringNullOrEmpty(address.adrressLine3)) {
          addressArray.add(Util.toTitleCase(address.adrressLine3!));
        }
        if (!_isStringNullOrEmpty(address.state)) {
          addressArray.add(Util.toTitleCase(address.state!));
        }
        if (!_isStringNullOrEmpty(address.country)) {
          secondLine = address.country!;
        }
        if (!_isStringNullOrEmpty(address.pincode)) {
          secondLine += ', ${address.pincode!}';
        }

        String contactNo = '';
        if (!Util.isStringNullOrEmpty(branch.contactNo)) {
          contactNo = branch.contactNo!;
        }
        if (!Util.isStringNullOrEmpty(branch.contactMobileNo)) {
          contactNo = branch.contactMobileNo!;
        }
        if (posInvoice) {
          if (contactNo.isNotEmpty) {
            secondLine += ', $contactNo';
          }
          addressArray.add(Util.toTitleCase(secondLine));
        } else {
          addressArray.add(Util.toTitleCase(secondLine));
          addressArray.add(Util.toTitleCase(contactNo));
        }
      }
    }

    addressArray.add('Email : tillaicakeorder@gmail.com');
    // return addressArray.reversed.toList();
    return addressArray;
  }

  bool _isListNullOrEmpty(List<dynamic>? list) => list == null || list.isEmpty;

  bool _isStringNullOrEmpty(String? value) => Util.isStringNullOrEmpty(value);
  String decimalRoundOff(double? value) => (value ?? 0).toStringAsFixed(2);
  Future<Uint8List> _loadImageFromAssets(String path) async {
    final ByteData data = await rootBundle.load(path);
    return data.buffer.asUint8List();
  }
}
