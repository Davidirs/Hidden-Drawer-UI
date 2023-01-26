// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/widget/drawer_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback openDrawer;
  const ProfilePage({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: DrawerMenuWidget(
          onClicked: openDrawer,
        ),
        title: const Text(
          "Profile Page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
