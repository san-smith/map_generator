import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';
import 'package:map_generator/presentation/ui/menu/menu_item.dart';

class PMItem extends PopupMenuItem {
  final String title;

  PMItem({
    required this.title,
  }) : super(
          child: MenuItem(child: Text(title)),
          height: popupMenuHeight,
          padding: EdgeInsets.zero,
        );
}
