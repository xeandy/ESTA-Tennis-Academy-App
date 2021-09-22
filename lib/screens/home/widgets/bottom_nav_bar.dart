import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'btm_nav_bar_cubit.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.purpleAccent[700],
      currentIndex: context.watch<BottomNavBarCubit>().currentIndex,
      onTap: (index) {
        context.read<BottomNavBarCubit>().onTap(index);
      },
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      iconSize: 22,
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_tennis),
          label: 'Programs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: 'Payment',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity),
          label: 'Profile',
        ),
      ],
    );
  }
}
