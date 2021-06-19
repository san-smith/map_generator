import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/consts.dart';

class MenuItem extends StatelessWidget {
  final Widget? child;

  const MenuItem({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      constraints: BoxConstraints(minWidth: popupMenuWidth),
      child: child,
    );
  }
}
