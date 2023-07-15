import 'package:flutter/material.dart';

import './screens/portrait.dart';
import './screens/landscape.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        Orientation.portrait == MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Visibility(
        visible: isPortrait,
        replacement: const LandscapeHomeScreen(),
        child: const PortraitHomeScreen(),
      ),
    );
  }
}
