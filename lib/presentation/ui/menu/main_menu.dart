import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';
import 'package:map_generator/presentation/ui/menu/main_menu_item.dart';

class MainMenu extends StatelessWidget {
  final List<MainMenuItem> items;

  const MainMenu({
    Key? key,
    this.items = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainMenuHeight,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: items.map((it) => Flexible(child: it)).toList(),
      ),
    );
  }
}
