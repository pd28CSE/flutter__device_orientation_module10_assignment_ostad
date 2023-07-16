import 'package:flutter/material.dart';

import './screens/portrait.dart';
import './screens/landscape.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return Visibility(
            visible: orientation == Orientation.portrait,
            replacement: const LandscapeHomeScreen(),
            child: const PortraitHomeScreen(),
          );
        },
      ),
    );
  }
}
