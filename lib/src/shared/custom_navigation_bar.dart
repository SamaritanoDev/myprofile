import 'package:flutter/material.dart';
import 'package:myprofile/src/features/about_me/about_me_page.dart';
import 'package:myprofile/src/features/profile/profile_page.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
            ),
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.favorite,
            ),
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: 'About Me',
          ),
        ],
      ),
      body: [
        const ProfilePage(),
        const AboutMePage(),
      ][currentPageIndex],
    );
  }
}
