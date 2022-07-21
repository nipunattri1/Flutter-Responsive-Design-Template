// Class to manage Navigation of app.
import 'package:riverpod/riverpod.dart';

// create a provider for [NavCounter] class
final navProvider = StateProvider<int>((ref) => 0);
