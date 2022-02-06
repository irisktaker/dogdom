import '/shared/bottom_navigation_bar/btn_nav_bar_bloc.dart';
import 'package:flutter/material.dart';

import '../custom_icon/custom_icon.dart';

class BtnNavBar extends StatefulWidget {
  const BtnNavBar({Key? key}) : super(key: key);

  @override
  State<BtnNavBar> createState() => _BtnNavBarState();
}

BtnNavBarBloc _navBarBloc = BtnNavBarBloc();

class _BtnNavBarState extends State<BtnNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navBarBloc.screens[_navBarBloc.screenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navBarBloc.screenIndex,
        onTap: (index) {
          setState(() {
            _navBarBloc.screenIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: customIcon(
              "assets/icons/home.png",
              color: _navBarBloc.screenIndex == 0 ? Colors.red : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: customIcon(
              "assets/icons/circle.png",
              color: _navBarBloc.screenIndex == 1 ? Colors.red : Colors.black,
            ),
            label: 'Circle',
          ),
          BottomNavigationBarItem(
            icon: customIcon(
              "assets/icons/add.png",
              color: _navBarBloc.screenIndex == 2 ? Colors.red : Colors.black,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: customIcon(
              "assets/icons/message.png",
              color: _navBarBloc.screenIndex == 3 ? Colors.red : Colors.black,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: customIcon(
              "assets/icons/user.png",
              color: _navBarBloc.screenIndex == 4 ? Colors.red : Colors.black,
            ),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
