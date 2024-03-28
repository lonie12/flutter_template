import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/pages/home/home.page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Home(),
    const Home(),
    const Home()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300, width: 0.7),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: const Color(0xFF526480),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.home),
              // activeIcon: const Icon(Iconsax.home5),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.shopping_bag),
              // activeIcon: const Icon(Iconsax.search_normal5),
              label: AppLocalizations.of(context)!.service,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.activity),
              // activeIcon: const Icon(Iconsax.ticket5),
              label: AppLocalizations.of(context)!.activity,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Iconsax.setting),
              // activeIcon: const Icon(Iconsax.user4),
              label: AppLocalizations.of(context)!.setting,
            ),
          ],
        ),
      ),
    );
  }
}
