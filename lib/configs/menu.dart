import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/paths.dart';

class MenuItem {
  final Icon icon;
  final String label;
  final String pathname;

  MenuItem({
    required this.icon,
    required this.label,
    required this.pathname,
  });
}

List<MenuItem> menuItems = [
  MenuItem(
    icon: const Icon(Icons.list),
    label: 'Danh sách cảnh sát',
    pathname: AppPaths.polices,
  ),
  MenuItem(
    icon: const Icon(Icons.list),
    label: 'Danh sách đối tượng',
    pathname: AppPaths.drugAddicts,
  ),
  MenuItem(
    icon: const Icon(Icons.list),
    label: 'Danh sách nơi cai nghiện',
    pathname: AppPaths.treatmentPlaces,
  ),
];
