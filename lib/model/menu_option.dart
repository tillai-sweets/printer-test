import 'package:flutter/material.dart';

class MenuOption {
  final String label;
  final IconData icon;

  MenuOption({required this.label, required this.icon});
}

class EnumDropdownModel {
  final String name;
  final dynamic item;

  EnumDropdownModel({required this.name, required this.item});
}
