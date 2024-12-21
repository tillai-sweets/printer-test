import 'package:testprint/models/ModelProvider.dart';
import '/models/Category.dart' as local;

class InvoiceModel {
  final List<InvoiceItem> items;
  final String date;
  final String time;
  final String invoiceNo;
  final String orderNo;
  final Customer customer;
  final String shopName;
  final List<String> shopAdrress;
  final String disount;
  final String totalPayable;
  final String advanceAmt;
  final String totalAmt;
  final String roundOffAmt;
  final String taxAmt;
  final String cgstAmt;
  final String utstAmt;
  final String cgstPercentage;
  final String utgstPercentage;
  final String deliveryDateTimeStr;
  final String? orderFormNumber;
  final String? fssaiNo;
  final String? gstIn;

  final String dueAmt;
  InvoiceModel({
    required this.items,
    required this.date,
    required this.time,
    required this.invoiceNo,
    required this.orderNo,
    required this.customer,
    required this.shopName,
    required this.shopAdrress,
    required this.disount,
    required this.totalPayable,
    required this.advanceAmt,
    required this.totalAmt,
    required this.roundOffAmt,
    required this.taxAmt,
    required this.cgstAmt,
    required this.utstAmt,
    required this.cgstPercentage,
    required this.utgstPercentage,
    required this.dueAmt,
    required this.deliveryDateTimeStr,
    this.orderFormNumber,
    this.fssaiNo,
    this.gstIn,
  });
}

class InvoiceItem {
  final String name;
  final String weightStr;
  final double weight;
  final String qty;
  final String price;
  final String rate;
  final String hsnCode;
  final local.Category? category;
  final Flavour? flavour;
  final ShapeType? shape;
  final bool isAddOnItem;
  final bool showRateUnit;
  final String? addOnItemCode;
  final String? customerMessage;
  final String? customisationMsg;
  final DieteryType? dieteryType;
  final String? rateUnit;
  final String? weightUnit;
  final OrderDetail? orderDetail;

  InvoiceItem({
    required this.name,
    required this.weight,
    required this.weightStr,
    required this.qty,
    required this.price,
    required this.rate,
    required this.hsnCode,
    required this.category,
    required this.flavour,
    required this.shape,
    required this.isAddOnItem,
    required this.weightUnit,
    this.customerMessage,
    this.customisationMsg,
    this.addOnItemCode,
    this.dieteryType,
    this.showRateUnit = true,
    this.rateUnit,
    this.orderDetail,
  });
}

class ItemAmountBreakup {
  final double amount;
  final double taxAmount;
  final double taxPercentage;
  final double itemPrice;
  final double cgstAmt;
  final double utgstAmt;

  ItemAmountBreakup({
    required this.amount,
    required this.taxAmount,
    required this.taxPercentage,
    required this.itemPrice,
    required this.cgstAmt,
    required this.utgstAmt,
  });
}
