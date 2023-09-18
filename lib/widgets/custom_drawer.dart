import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'custom_text.dart';

class Cdrawer extends StatelessWidget {
  const Cdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: red,
        key: scaffoldKey,
        drawer: SizedBox(
            height: height, width: width * 0.75, child: const DrawerPage()),
        body: ElevatedButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: const cText(text: "Open Drawer")),
      ),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      color: red,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.24,
            child: Stack(
              children: [
                Container(
                  height: height * 0.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/profileBg.png"),
                          fit: BoxFit.fitHeight)),
                ),
                Positioned(
                    right: 5,
                    top: 5,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: red,
                          child: const Icon(
                            Icons.close,
                            color: grey,
                          ),
                        ))),
                Positioned(
                  bottom: height * 0.015,
                  left: 15,
                  child: Container(
                    width: width * 0.165,
                    height: width * 0.165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.2),
                        image: const DecorationImage(
                            image: AssetImage("images/user.png"),
                            fit: BoxFit.fitHeight)),
                  ),
                ),
                Positioned(
                    bottom: height * 0.055,
                    left: width * 0.22,
                    child: cText(
                      text: "USER NAME",
                      color: white,
                      width: width * 0.038,
                    ))
              ],
            ),
          ),
          ListTile(
            title: cText(
              text: "Item 1",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),

            // Container(
            //     width: width * 0.05,
            //     decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: AssetImage("images/home_drawer.png")))),
            minLeadingWidth: 4,
            onTap: () {},
          ),
          ListTile(
            title: cText(
              text: "Item 2",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),
            minLeadingWidth: 4,
            onTap: () {},
          ),
          ListTile(
            title: cText(
              text: "Item 3",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),
            minLeadingWidth: 4,
            onTap: () {},
          ),
          ListTile(
            title: cText(
              text: "Item 4",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),
            minLeadingWidth: 4,
            onTap: () {},
          ),
          ListTile(
            title: cText(
              text: "Item 5",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),
            minLeadingWidth: 4,
            onTap: () {},
          ),
          ListTile(
            title: cText(
              text: "Item 6",
              width: width * 0.038,
            ),
            leading: const Icon(Icons.list),
            minLeadingWidth: 4,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
