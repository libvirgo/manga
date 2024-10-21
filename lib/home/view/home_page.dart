import 'package:flutter/material.dart';
import 'package:manga/home/widget/simple_widgets.dart';
import 'package:manga/l10n/l10n.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      // body: _pages[_currentPageIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentPageIndex,
        onTap: (index) => setState(() => _currentPageIndex = index),
        items: HomeSimpleWidgets.bottomBarItems(
          home: l10n.homeBottomNavigationBarItemTitle,
          search: l10n.searchBottomNavigationBarItemTitle,
          favorite: l10n.favoriteBottomNavigationBarItemTitle,
          profile: l10n.profileBottomNavigationBarItemTitle,
        ),
      ),
    );
  }
}
