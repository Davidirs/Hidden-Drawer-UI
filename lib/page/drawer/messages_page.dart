import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/widget/drawer_menu_widget.dart';

class MessagesPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const MessagesPage({
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
          "Messages Page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
