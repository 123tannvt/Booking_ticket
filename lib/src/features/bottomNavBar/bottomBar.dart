import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/profile_screen.dart';
import 'package:book_tiket/src/features/screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const HomeScreen(),
    const SearchSCreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption[_currentIndex],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Palette.primary,
        unselectedItemColor: Palette.second,
        margin: const EdgeInsets.symmetric(
          horizontal: kMediumPadding,
          vertical: kMediumPadding,
        ),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.house,
              size: kItermPaddig,
            ),
            title: const Text(
              'home',
            ),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: kItermPaddig,
            ),
            title: const Text(
              'search',
            ),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.ticket,
              size: kItermPaddig,
            ),
            title: const Text(
              'Ticket',
            ),
          ),
          SalomonBottomBarItem(
            icon: const Icon(
              FontAwesomeIcons.solidUser,
              size: kItermPaddig,
            ),
            title: const Text(
              'profile',
            ),
          ),
        ],
      ),
    );
  }
}
