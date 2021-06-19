import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/layout/main_layout.dart';
import 'package:map_generator/presentation/ui/menu/main_menu.dart';
import 'package:map_generator/presentation/ui/menu/main_menu_item.dart';
import 'package:map_generator/presentation/ui/menu/pm_item.dart';
import 'package:map_generator/presentation/ui/shortcut/actions.dart';
import 'package:map_generator/presentation/ui/shortcut/intents.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayout(
        top: _buildMenu(),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildMenu() {
    return MainMenu(
      items: [
        MainMenuItem(
          title: 'File',
          actions: [
            PMItem(
              title: 'New',
              shortcut: 'Ctrl+N',
              onTap: () {
                final newIntent = NewIntent();
                globalActions[newIntent.runtimeType]!.invoke(newIntent);
              },
            ),
            PopupMenuDivider(),
            PMItem(
              title: 'Open',
              onTap: () {
                print('zfzdfd');
              },
            ),
          ],
        ),
        MainMenuItem(
          title: 'About',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _printHello,
          child: Text('Hello'),
        ),
      ],
    );
  }

  void _printHello() {
    print('Hello');
  }
}
