import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.messenger),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.compass_calibration_rounded),
        ),
      ],
    );
  }
}
