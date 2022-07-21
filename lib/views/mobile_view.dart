// package imports
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

// Project Import
import 'package:responsive_design/controllers/navigation_controller.dart';
import 'package:responsive_design/constants.dart';

class MobileBody extends ConsumerWidget {
  /// Mobile view of the screen
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int nav = ref.watch(navProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.abc,
          size: 38,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: nav,
        onDestinationSelected: (idx) {
          ref.read(navProvider.notifier).state = idx;
        },
        destinations: navigationDestinations,
      ),
    );
  }
}
