import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  /// Manages responsiveness of app by returning different views based on screen size
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 520) {
          return mobileBody;
        } else if (constraints.maxWidth <= 1080) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
