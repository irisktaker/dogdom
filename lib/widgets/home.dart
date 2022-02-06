import '/screens/home/discover/home_discover_screen.dart';
import '/screens/home/select/home_select_screen.dart';

import '../shared/custom_icon/custom_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex = 0;

  List<Map<String, dynamic>> homeScreens = [
    {
      'screen': HomeSelectScreen(),
      'title': 'Select',
    },
    {
      'screen': HomeDiscoverScreen(),
      'title': 'Discover',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 42),
            InkWell(
              onTap: () => setState(() => screenIndex = 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    homeScreens[0]['title'],
                    style: TextStyle(
                      color: screenIndex == 0 ? Colors.black : Colors.grey,
                    ),
                  ),
                  screenIndex == 0
                      ? Image.asset(
                          "assets/icons/ellipse.png",
                          scale: 2,
                        )
                      : const SizedBox(
                          width: 13,
                          height: 3,
                        ),
                ],
              ),
            ),
            const SizedBox(width: 38),
            InkWell(
              onTap: () => setState(() => screenIndex = 1),
              child: Column(
                children: [
                  Text(
                    homeScreens[1]['title'],
                    style: TextStyle(
                      color: screenIndex == 1 ? Colors.black : Colors.grey,
                    ),
                  ),
                  screenIndex == 1
                      ? Image.asset(
                          "assets/icons/ellipse.png",
                          scale: 2,
                        )
                      : const SizedBox(
                          width: 13,
                          height: 3,
                        ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: customIcon("assets/icons/notification.png"),
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: Center(
        child: homeScreens[screenIndex]['screen'],
      ),
    );
  }
}
