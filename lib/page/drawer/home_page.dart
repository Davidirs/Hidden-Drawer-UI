import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_ui/widget/drawer_menu_widget.dart';

class HomePage extends StatelessWidget {
  final VoidCallback openDrawer;
  const HomePage({
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              "Home Page",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Get customized forniture of your choice at your fingertips."),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: 70,
                children: const [
                  Icon(size: 30, FontAwesomeIcons.car),
                  Icon(size: 30, FontAwesomeIcons.bullhorn),
                  Icon(size: 30, FontAwesomeIcons.bed),
                  Icon(size: 30, FontAwesomeIcons.shower),
                  Icon(size: 30, FontAwesomeIcons.house),
                  Icon(size: 30, FontAwesomeIcons.sackDollar),
                  Icon(size: 30, FontAwesomeIcons.s),
                  Icon(size: 30, FontAwesomeIcons.safari),
                  Icon(size: 30, FontAwesomeIcons.d),
                ],
              ),
            ),
            const Text(
              "Popular Themes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width / 2 - 40,
                  child: Column(
                    children: [
                      imgCreated(100,
                          "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"),
                      imgCreated(250,
                          "https://cdn.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej.png"),
                      imgCreated(250,
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width / 2 - 40,
                  child: Column(
                    children: [
                      imgCreated(300,
                          "https://media.gq.com.mx/photos/6165c414e1224bdb3d42c49b/4:3/w_1999,h_1499,c_limit/habitos-de-un-hombre-con-estilo-como-se-comporta.jpg"),
                      imgCreated(
                        200,
                        "https://media.revistagq.com/photos/606b3183a359af169e483dcb/16:9/w_2560%2Cc_limit/estar-guapo.jpeg",
                      ),
                      imgCreated(
                        100,
                        "https://images.ecestaticos.com/BbcswjLivBKEQQLuQtn6wU2pCmw=/119x87:4983x3534/992x700/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F542%2F18c%2F2b9%2F54218c2b95445ae1fea91aca9e37b53e.jpg",
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Text(
              "Home Page",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Get customized forniture of your choice at your fingertips. Get customized forniture of your choice at your fingertips."),
            const Text(
                "Get customized forniture of your choice at your fingertips. \nGet customized forniture of your choice at your fingertips."),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: 70,
                children: const [
                  Icon(size: 30, FontAwesomeIcons.shower),
                  Icon(size: 30, FontAwesomeIcons.bullhorn),
                  Icon(size: 30, FontAwesomeIcons.s),
                  Icon(size: 30, FontAwesomeIcons.d),
                  Icon(size: 30, FontAwesomeIcons.car),
                  Icon(size: 30, FontAwesomeIcons.safari),
                  Icon(size: 30, FontAwesomeIcons.house),
                  Icon(size: 30, FontAwesomeIcons.sackDollar),
                  Icon(size: 30, FontAwesomeIcons.bed),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container imgCreated(double height, String url) {
    return Container(
      height: height,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
