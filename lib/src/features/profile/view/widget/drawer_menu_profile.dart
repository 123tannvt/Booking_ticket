import 'package:book_tiket/src/config/config.dart';
import 'package:book_tiket/src/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slide_drawer/slide_drawer.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

enum SlideDrawerExampleType {
  Basic,
  BackGround,
  Gradient,
}

class _DrawerMenuState extends State<DrawerMenu> {
  Key _appKey = UniqueKey();
  SlideDrawerExampleType type = SlideDrawerExampleType.Basic;
  bool get _isBasic => type == SlideDrawerExampleType.Basic;
  bool get _isBackground => type == SlideDrawerExampleType.BackGround;
  bool get _isGradient => type == SlideDrawerExampleType.Gradient;

  List<MenuItem> get _itermIcon => [
        MenuItem(
          'Edit Profile',
          icon: FontAwesomeIcons.gear,
          onTap: () {
            AppNavigator.push(Routes.editProfileScreen);
          },
        ),
        MenuItem(
          'Basic',
          icon: FontAwesomeIcons.rss,
          onTap: () => _changeType(SlideDrawerExampleType.Basic),
        ),
        MenuItem(
          'custom Background',
          icon: FontAwesomeIcons.heart,
          onTap: () => _changeType(SlideDrawerExampleType.BackGround),
        ),
        MenuItem(
          'Basic',
          icon: FontAwesomeIcons.mailchimp,
          onTap: () => _changeType(SlideDrawerExampleType.Gradient),
        ),
        MenuItem(
          'Đăng xuất',
          icon: FontAwesomeIcons.arrowRightArrowLeft,
          onTap: () {
            AppNavigator.pop(Routes.loginScreen);
          },
        ),
      ];

  List<MenuItem> get _iterm => [
        MenuItem(
          'Edit Profile',
          icon: FontAwesomeIcons.gear,
          onTap: () {
            AppNavigator.push(Routes.editProfileScreen);
          },
        ),
        MenuItem(
          'Basic',
          onTap: () => _changeType(SlideDrawerExampleType.Basic),
        ),
        MenuItem(
          'custom Background',
          onTap: () => _changeType(SlideDrawerExampleType.BackGround),
        ),
        MenuItem(
          'Basic',
          onTap: () => _changeType(SlideDrawerExampleType.Gradient),
        ),
        MenuItem(
          'Đăng xuất',
          onTap: () {
            AppNavigator.pop(Routes.loginScreen);
          },
        ),
      ];

  _changeType(type) {
    if (this.type != type) {
      setState(() {
        this.type = type;
        _appKey = UniqueKey();
      });
    }
  }

  Widget get _home {
    if (_isBasic) return _basic;
    if (_isBackground) return _background;
    if (_isGradient) return _gradient;
    return _basic;
  }

  Widget get _basic => SlideDrawer(
        items: _iterm,
        child: const ProfileScreen(),
      );

  Widget get _background => SlideDrawer(
        brightness: Brightness.dark,
        backgroundColor: Palette.primary,
        items: _iterm,
        child: const ProfileScreen(),
      );

  Widget get _gradient => SlideDrawer(
        brightness: Brightness.dark,
        backgroundGradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.0,
              1.0
            ],
            colors: [
              Palette.second,
              Palette.primary,
            ]),
        curve: Curves.easeInOut,
        items: _itermIcon,
        child: const ProfileScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _home);
  }
}
