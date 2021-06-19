import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    this.leading,
    this.trailing,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final Widget? leading;
  final Widget? trailing;

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
}
