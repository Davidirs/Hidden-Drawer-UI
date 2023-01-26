import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/data/drawer_items.dart';
import 'package:hidden_drawer_ui/model/drawer_item.dart';
import 'package:hidden_drawer_ui/page/drawer/explore_page.dart';
import 'package:hidden_drawer_ui/page/drawer/favorites_page.dart';
import 'package:hidden_drawer_ui/page/drawer/home_page.dart';
import 'package:hidden_drawer_ui/page/drawer/messages_page.dart';
import 'package:hidden_drawer_ui/page/drawer/profile_page.dart';
import 'package:hidden_drawer_ui/page/drawer/settings_page.dart';
import 'package:hidden_drawer_ui/widget/drawer_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: const Color.fromRGBO(21, 30, 61, 1)),
      title: 'Material App',
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item = DrawerItems.home;
  bool isDrawing = false;
  @override
  void initState() {
    super.initState();

    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });
  void openDrawer() => setState(() {
        xOffset = 250;
        yOffset = 150;
        scaleFactor = 0.6;
        isDrawerOpen = true;
      });

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: [
            buildDrawer(),
            buildPage(),
          ],
        ),
      );

  Widget buildDrawer() => SafeArea(
        child: SizedBox(
          width: xOffset,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => closeDrawer(),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: FlutterLogo(),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Sarah",
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              DrawerWidget(
                onSelectedItem: (item) {
                  switch (item) {
                    case DrawerItems.logout:
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Logging Out"),
                        ),
                      );
                      return;

                    default:
                      setState(() => this.item = item);
                      closeDrawer();
                  }
                },
              ),
            ],
          ),
        ),
      );

  buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDrawing = true,
        onHorizontalDragUpdate: (details) {
          if (!isDrawing) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDrawing = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          child: AbsorbPointer(
            absorbing: isDrawerOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
              child: Container(
                color: isDrawerOpen
                    ? Colors.white12
                    : Theme.of(context).primaryColor,
                child: getDrawerPage(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (item) {
      case DrawerItems.explore:
        return ExplorePage(openDrawer: openDrawer);
      case DrawerItems.favorite:
        return FavoritesPage(openDrawer: openDrawer);
      case DrawerItems.message:
        return MessagesPage(openDrawer: openDrawer);
      case DrawerItems.profile:
        return ProfilePage(openDrawer: openDrawer);
      case DrawerItems.settings:
        return SettingsPage(openDrawer: openDrawer);

      case DrawerItems.home:
      default:
        return HomePage(openDrawer: openDrawer);
    }
  }
}
