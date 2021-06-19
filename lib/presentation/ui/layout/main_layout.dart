import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget? top;
  final Widget? bottom;
  final Widget? child;

  const MainLayout({
    Key? key,
    this.top,
    this.bottom,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (top != null) top!,
        if (child != null) Expanded(child: child!),
        if (bottom != null) bottom!,
      ],
    );
  }
}
