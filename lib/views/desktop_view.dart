// package imports
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// project imports
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/controllers/navigation_controller.dart';

class DesktopBody extends ConsumerWidget {
  /// Desktop view of the screen
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nav = ref.watch(navProvider);
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            leading: leading(),
            destinations: railDesignations,
            selectedIndex: nav,
            onDestinationSelected: (idx) {
              ref.read(navProvider.notifier).state = idx;
            },
          ),
          const Spacer(),
          const SizedBox(
            width: 350,
            height: double.infinity,
            child: Card(),
          )
        ],
      ),
    );
  }
}
