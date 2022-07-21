// Class to manage Navigation of app.
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create a provider for [NavCounter] class
final navProvider = StateProvider<int>((ref) => 0);
