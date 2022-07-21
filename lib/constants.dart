import 'package:flutter/material.dart';

Color baseColor = const Color(0xff9F86C0); // base color for application

ThemeData darkTheme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    seedColor: baseColor,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);

ThemeData lightTheme = ThemeData.from(
  colorScheme: ColorScheme.fromSeed(
    seedColor: baseColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
);

List<NavigationRailDestination> get railDesignations {
  return [
    const NavigationRailDestination(
      icon: Icon(Icons.home),
      label: Text("Home"),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.settings),
      label: Text("Settings"),
    ),
  ];
}

List<NavigationDestination> get navigationDestinations {
  return [
    const NavigationDestination(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const NavigationDestination(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
  ];
}

// Leading Icon for app [ABC Icon]
Widget leading() {
  return const Icon(
    Icons.abc,
    size: 38,
  );
}
