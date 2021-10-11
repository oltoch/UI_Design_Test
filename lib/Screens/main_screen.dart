import 'package:flutter/material.dart';
import 'package:interview_app/tab_pages/chats_tab.dart';
import 'package:interview_app/tab_pages/home_tab.dart';
import 'package:interview_app/tab_pages/moments_tab.dart';
import 'package:interview_app/tab_pages/profile_tab.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'MainScreen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomeTab(),
          MomentsTab(),
          ChatsTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('images/home_icon.png'), label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset('images/moments_icon.png'), label: 'Moments'),
          BottomNavigationBarItem(
              icon: Image.asset('images/chats_with_dot_icon.png'),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Image.asset('images/profile_icon.png'), label: 'Profile'),
        ],
        elevation: 16,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemCLicked,
        // unselectedItemColor: Colors.green[300],
        // selectedItemColor: Colors.green[900],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  void onItemCLicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController.index = selectedIndex;
    });
  }
}
