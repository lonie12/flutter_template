import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mainuse/pages/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
      // backgroundColor: Styles.primaryColor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.grey.shade200,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        // selectedLabelStyle: TextStyle(fontSize: 20, color: Colors.green),
        type: BottomNavigationBarType.fixed,
        // selectedItemColor: Colors.blueAccent,
        // unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.home),
            activeIcon: const Icon(Iconsax.home5),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.search_normal),
            activeIcon: const Icon(Iconsax.search_normal5),
            label: AppLocalizations.of(context)!.search,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.ticket),
            activeIcon: const Icon(Iconsax.ticket5),
            label: AppLocalizations.of(context)!.ticket,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Iconsax.user),
            activeIcon: const Icon(Iconsax.user4),
            label: AppLocalizations.of(context)!.profile,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
