import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';
import 'package:map_generator/presentation/ui/menu/menu_item.dart';

class PMItem extends PopupMenuItem<VoidCallback?> {
  final String title;
  final VoidCallback? onTap;
  final String? shortcut;

  PMItem({
    required this.title,
    this.onTap,
    this.shortcut,
  }) : super(
          child: MenuItem(
            child: Text(title),
            shortcut: shortcut,
          ),
          height: popupMenuHeight,
          padding: EdgeInsets.zero,
          value: onTap,
        );
}
