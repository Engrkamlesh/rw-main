import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../View/HomeScreen.dart';
import '../../api services/Color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      HomeScreen(),
      Text("Trainer List"),
      Text("Schedule"),
      Text("Profile"),
      Text("Add"),
    ];
  }

  // int _selectedindex = 0;

  // void onItemTap(int index){
  //   _selectedindex  = index;
  // }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.dashboard),
          title: "Dashboard",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white30,
          
          ),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.list,
          ),
          title: "Trainer List",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.black,
          ),
          activeColorPrimary: Colors.grey,
          inactiveColorPrimary: Colors.white60),
      PersistentBottomNavBarItem(
          title: "Schedule",
          icon: Icon(Icons.schedule_rounded),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
      PersistentBottomNavBarItem(
          title: "Profile",
          icon: Icon(Icons.person_rounded),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
    
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controller,
      navBarHeight: 70,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      navBarStyle: NavBarStyle.style15,
      popAllScreensOnTapOfSelectedTab: true,
      backgroundColor: AppColor.navbarColor,
      // onItemSelected: onItemTap,
    );
  }
}
