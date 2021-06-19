import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';
import 'package:map_generator/presentation/ui/menu/menu_item.dart';

class PMItem extends PopupMenuItem<VoidCallback?> {
  final String title;
  final VoidCallback? onTap;

  PMItem({
    required this.title,
    this.onTap,
  }) : super(
          child: MenuItem(child: Text(title)),
          height: popupMenuHeight,
          padding: EdgeInsets.zero,
          value: onTap,
        );
}
