import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';

class MainMenuItem<T> extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final List<PopupMenuEntry<T>> actions;

  const MainMenuItem({
    Key? key,
    required this.title,
    this.onPressed,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return actions.isEmpty
        ? Container(
            child: InkWell(
              child: _buildMenuText(),
              onTap: onPressed,
            ),
          )
        : PopupMenuButton(
            child: _buildMenuText(),
            padding: EdgeInsets.zero,
            offset: Offset(0, 25),
            itemBuilder: (_) => actions.map((it) => it).toList(),
          );
  }

  Widget _buildMenuText() {
    return Padding(
      padding: EdgeInsets.all(menuItemPadding),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
