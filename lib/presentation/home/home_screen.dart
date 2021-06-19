import 'package:flutter/material.dart';
import 'package:map_generator/presentation/ui/layout/main_layout.dart';
import 'package:map_generator/presentation/ui/menu/main_menu.dart';
import 'package:map_generator/presentation/ui/menu/main_menu_item.dart';
import 'package:map_generator/presentation/ui/menu/pm_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayout(
        top: MainMenu(
          items: [
            MainMenuItem(
              title: 'File',
              actions: [
                PMItem(
                  title: 'New',
                  onTap: () {
                    print('zfzdfd');
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
        ),
      ),
    );
  }
}
