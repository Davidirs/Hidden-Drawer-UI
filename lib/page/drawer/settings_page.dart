import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/widget/drawer_menu_widget.dart';

class SettingsPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const SettingsPage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: DrawerMenuWidget(
          onClicked: openDrawer,
        ),
        title: const Text(
          "Settings Page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
