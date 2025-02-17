import 'package:flutter/material.dart';
import 'package:movies_app/core/provider/my%20provider.dart';
import 'package:movies_app/screens/Home_screen/tabs/browse_tab/browse_tab.dart';
import 'package:movies_app/screens/Home_screen/tabs/home_tab/home_tab.dart';
import 'package:movies_app/screens/Home_screen/tabs/profile_tab/profile_tab.dart';
import 'package:movies_app/screens/Home_screen/tabs/search_tab/search_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [HomeTab(), SearchTab(), BrowseTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.selectedIndex,
        onTap: (index) {
          provider.changeIndex(index);
        },
        backgroundColor: Color(0xFF4B4B4B),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_sharp), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: ""),
        ],
      ),
      body: tabs[provider.selectedIndex],
    );
  }
}
