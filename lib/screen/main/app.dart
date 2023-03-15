import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'cart/cart_screen.dart';
import 'favorite/favorite_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main';

  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late PersistentTabController _controller;
  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const FavoriteScreen(),
        const CartScreen(),
        const ProfileScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/images/navbar/active-home.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          inactiveIcon: Image.asset(
            'assets/images/navbar/home.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.navbarColor.withOpacity(0.5),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/images/navbar/active-heart.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          inactiveIcon: Image.asset(
            'assets/images/navbar/heart.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.navbarColor.withOpacity(0.5),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/images/navbar/active-buy.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          inactiveIcon: Image.asset(
            'assets/images/navbar/buy.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.navbarColor.withOpacity(0.5),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/images/navbar/active-profile.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          inactiveIcon: Image.asset(
            'assets/images/navbar/profile.png',
            fit: BoxFit.contain,
            height: 24,
            width: 24,
          ),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.navbarColor.withOpacity(0.5),
        ),
      ];
  int _initialIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: 70,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        decoration: NavBarDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -6),
              blurRadius: 116,
            ),
          ],
        ),
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
        onItemSelected: (index) {
          setState(() => _initialIndex = index);
        },
      ),
    );
  }
}
