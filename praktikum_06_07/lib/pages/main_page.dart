// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:praktikum_06/pages/home/home_page.dart';
import 'package:praktikum_06/pages/portofolio/portofolio_page.dart';
import 'package:praktikum_06/pages/profile/profile_page.dart';
import 'package:praktikum_06/pages/support/support_page.dart';
import 'package:praktikum_06/styles/colors.dart';
import 'package:praktikum_06/styles/text_style.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    HomePage(),
    PortofolioPage(),
    SupportPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColorWithOpacity,
      body: pages[_selectedIndex],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: kGray,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kPurpleRibbon,
          unselectedItemColor: kDarkGray,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 24,
                  color: _selectedIndex == 0 ? kPurpleRibbon : kDarkGray,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/portofolio.png',
                  width: 24,
                  color: _selectedIndex == 1 ? kPurpleRibbon : kDarkGray,
                ),
                label: 'Portofolio'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/support.png',
                  width: 24,
                  color: _selectedIndex == 2 ? kPurpleRibbon : kDarkGray,
                ),
                label: 'Support'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/profile.png',
                  width: 24,
                  color: _selectedIndex == 3 ? kPurpleRibbon : kDarkGray,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
