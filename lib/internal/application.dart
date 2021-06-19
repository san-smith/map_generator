import 'package:flutter/material.dart';
import 'package:map_generator/presentation/home/home_screen.dart';
import 'package:map_generator/presentation/ui/theme.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapGenerator',
      theme: darkTheme,
      home: Home(),
    );
  }
}
