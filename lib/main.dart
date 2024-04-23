import 'package:flutter/material.dart';

import 'app/init.dart';
import 'app/wirelism_app.dart';

Future<void> main() async {
  await appInitialization();
  runApp(const WirelismApp());
}
