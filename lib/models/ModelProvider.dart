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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'AddOnItem.dart';
import 'AppSettings.dart';
import 'ArchiveOrder.dart';
import 'Branch.dart';
import 'Category.dart';
import 'CategoryFlavour.dart';
import 'Customer.dart';
import 'Flavour.dart';
import 'Item.dart';
import 'ItemFlavour.dart';
import 'Order.dart';
import 'OrderArchiveDetail.dart';
import 'OrderDetail.dart';
import 'Sales.dart';
import 'TaxDetail.dart';
import 'UserProfile.dart';
import 'Address.dart';
import 'OrderStatusChangeHistory.dart';
import 'TrackInfo.dart';

export 'AddOnItem.dart';
export 'AddOnType.dart';
export 'Address.dart';
export 'AppSettings.dart';
export 'ArchiveOrder.dart';
export 'Branch.dart';
export 'Category.dart';
export 'CategoryFlavour.dart';
export 'CupcakeType.dart';
export 'Customer.dart';
export 'DieteryType.dart';
export 'Flavour.dart';
export 'FondantType.dart';
export 'Item.dart';
export 'ItemFlavour.dart';
export 'Order.dart';
export 'OrderArchiveDetail.dart';
export 'OrderDetail.dart';
export 'OrderStatus.dart';
export 'OrderStatusChangeHistory.dart';
export 'PhotoSheetType.dart';
export 'RoleType.dart';
export 'Sales.dart';
export 'ShapeType.dart';
export 'TaxDetail.dart';
export 'TrackInfo.dart';
export 'UnitType.dart';
export 'UserProfile.dart';
export 'UserStatusType.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "7b8657d940883e9bbeb385dfa6e3ceba";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [AddOnItem.schema, AppSettings.schema, ArchiveOrder.schema, Branch.schema, Category.schema, CategoryFlavour.schema, Customer.schema, Flavour.schema, Item.schema, ItemFlavour.schema, Order.schema, OrderArchiveDetail.schema, OrderDetail.schema, Sales.schema, TaxDetail.schema, UserProfile.schema];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [Address.schema, OrderStatusChangeHistory.schema, TrackInfo.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "AddOnItem":
        return AddOnItem.classType;
      case "AppSettings":
        return AppSettings.classType;
      case "ArchiveOrder":
        return ArchiveOrder.classType;
      case "Branch":
        return Branch.classType;
      case "Category":
        return Category.classType;
      case "CategoryFlavour":
        return CategoryFlavour.classType;
      case "Customer":
        return Customer.classType;
      case "Flavour":
        return Flavour.classType;
      case "Item":
        return Item.classType;
      case "ItemFlavour":
        return ItemFlavour.classType;
      case "Order":
        return Order.classType;
      case "OrderArchiveDetail":
        return OrderArchiveDetail.classType;
      case "OrderDetail":
        return OrderDetail.classType;
      case "Sales":
        return Sales.classType;
      case "TaxDetail":
        return TaxDetail.classType;
      case "UserProfile":
        return UserProfile.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
