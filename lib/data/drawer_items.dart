import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_ui/model/drawer_item.dart';

class DrawerItems {
  static const home = DrawerItem(
    title: "Home",
    icon: FontAwesomeIcons.house,
  );
  static const explore = DrawerItem(
    title: "Explore",
    icon: Icons.explore,
  );
  static const favorite = DrawerItem(
    title: "Favorite",
    icon: Icons.favorite,
  );
  static const message = DrawerItem(
    title: "Message",
    icon: Icons.message,
  );
  static const profile = DrawerItem(
    title: "Profile",
    icon: Icons.person,
  );
  static const settings = DrawerItem(
    title: "Settings",
    icon: Icons.settings,
  );
  static const logout = DrawerItem(
    title: "Logout",
    icon: Icons.logout,
  );
  static final List<DrawerItem> all = [
    home,
    explore,
    favorite,
    message,
    profile,
    settings,
    logout,
  ];
}
