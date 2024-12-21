import '../model/menu_option.dart';
import '../models/ModelProvider.dart';

String getDieteryType(DieteryType? type) {
  if (type == null) return '';
  switch (type) {
    case DieteryType.EGG:
      return 'Egg';
    case DieteryType.EGGLESS:
      return 'Eggless';
  }
}

List<EnumDropdownModel> getDieteryTypeModel() {
  List<EnumDropdownModel> list = [];
  for (var e in DieteryType.values) {
    list.add(EnumDropdownModel(name: getDieteryType(e), item: e));
  }
  return list;
}

EnumDropdownModel? setDieteryTypeModel(DieteryType? type) {
  return type == null
      ? null
      : EnumDropdownModel(name: getDieteryType(type), item: type);
}

String getShapeType(ShapeType? type) {
  if (type == null) return '';
  switch (type) {
    case ShapeType.RECTANGLE:
      return 'Rectangle';
    case ShapeType.ROUND:
      return 'Round';
    case ShapeType.SQUARE:
      return 'Square';
    case ShapeType.HEART:
      return 'Heart';
    case ShapeType.CUSTOM:
      return 'Custom';
    case ShapeType.TIERONE:
      return '1 TIER';
    case ShapeType.TIERTWO:
      return '2 TIER';
    case ShapeType.TIERTHREE:
      return '3 TIER';
  }
}

List<EnumDropdownModel> getShapeTypeModel() {
  List<EnumDropdownModel> list = [];
  for (var e in ShapeType.values) {
    list.add(EnumDropdownModel(name: getShapeType(e), item: e));
  }
  return list;
}

EnumDropdownModel? setShapeTypeModel(ShapeType? type) {
  return type == null
      ? null
      : EnumDropdownModel(name: getShapeType(type), item: type);
}
