import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    this.leading,
    this.trailing,
    this.shortcut,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final String? shortcut;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      constraints: BoxConstraints(minWidth: popupMenuWidth),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildBlock(leading),
          Expanded(child: child),
          if (shortcut != null) _buildShortcut(),
          _buildBlock(trailing),
        ],
      ),
    );
  }

  Widget _buildBlock(Widget? child) {
    return SizedBox(
      width: 25,
      child: child,
    );
  }

  Widget _buildShortcut() {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(shortcut!),
    );
  }
}
