
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigation/custom_animated_bottom_bar.dart';
import '../add/add_page.dart';
import '../home/home_page.dart';
import '../messages/messages_page.dart';
import '../users/users_page.dart';
import 'dashboard_controller.dart';

class MyDashBoard extends StatefulWidget {

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(
        builder: (controller){
          return Scaffold(
              body: SafeArea(
                child: IndexedStack(
                  index: controller.tabIndex.value,
                  children: [
                    HomePage(),
                    UsersPage(),
                    MessagesPage(),
                    AddPage(),
                  ],
                ),
              ),
              bottomNavigationBar: CustomAnimatedBottomBar(
                containerHeight: 70,
                backgroundColor: Colors.white,
                selectedIndex: controller.tabIndex.value,
                showElevation: true,
                itemCornerRadius: 24,
                curve: Curves.easeIn,
                onItemSelected: controller.changeTabIndex,
                items: <BottomNavyBarItem>[
                  BottomNavyBarItem(
                    icon: const Icon(Icons.apps),
                    title: const Text('Home'),
                    activeColor: Colors.green,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: const Icon(Icons.people),
                    title: const Text('Users'),
                    activeColor: Colors.purpleAccent,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: const Icon(Icons.message),
                    title: const Text(
                      'Messages ',
                    ),
                    activeColor: Colors.pink,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                  BottomNavyBarItem(
                    icon: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    activeColor: Colors.blue,
                    inactiveColor: _inactiveColor,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
          );
        }
    );
  }







}