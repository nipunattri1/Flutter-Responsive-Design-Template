// Package Imports
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project Imports
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/views/desktop_view.dart';
import 'package:responsive_design/views/mobile_view.dart';
import 'package:responsive_design/views/tablet_view.dart';
import 'package:responsive_design/widgets/responsive_layout.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      // Returns different views based on screen size
      home: const ResponsiveLayout(
        mobileBody: MobileBody(),
        tabletBody: TabletBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
