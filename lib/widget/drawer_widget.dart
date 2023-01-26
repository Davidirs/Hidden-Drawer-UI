import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/data/drawer_items.dart';
import 'package:hidden_drawer_ui/model/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;

  const DrawerWidget({
    Key? key,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildDrawerItems(context),
            ],
          ),
        ),
      );

  Widget buildDrawerItems(BuildContext context) => Column(
      children: DrawerItems.all
          .map((item) => ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                title: Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  item.icon,
                  color: Colors.white,
                ),
                onTap: () => onSelectedItem(item),
              ))
          .toList());
}
