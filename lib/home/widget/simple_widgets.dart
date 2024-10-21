import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeSimpleWidgets {
  static List<SalomonBottomBarItem> bottomBarItems({
    required String home,
    required String search,
    required String favorite,
    required String profile,
  }) =>
      [
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: Text(home),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.search),
          title: Text(search),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.favorite),
          title: Text(favorite),
        ),
        SalomonBottomBarItem(
          icon: const Icon(Icons.person),
          title: Text(profile),
        ),
      ];
}
