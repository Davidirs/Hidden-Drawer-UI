import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/widget/drawer_menu_widget.dart';

class ExplorePage extends StatelessWidget {
  final VoidCallback openDrawer;
  const ExplorePage({
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
          "Explore Page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
