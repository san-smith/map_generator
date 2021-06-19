import 'package:flutter/material.dart';
import 'package:map_generator/presentation/home/home_screen.dart';
import 'package:map_generator/presentation/ui/shortcut/actions.dart';
import 'package:map_generator/presentation/ui/shortcut/shortcuts.dart';
import 'package:map_generator/presentation/ui/theme.dart';

class Application extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      autofocus: true,
      shortcuts: globalShortcuts,
      actions: globalActions,
      child: MaterialApp(
        title: 'MapGenerator',
        theme: darkTheme,
        home: Home(),
      ),
    );
  }
}
