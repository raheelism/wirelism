import 'package:flutter/material.dart';
import 'package:wirelism/config/routes/routes.dart';
import 'package:wirelism/config/theme/themes.dart';

class WirelismApp extends StatefulWidget {
  const WirelismApp({super.key});

  @override
  State<WirelismApp> createState() => _WirelismAppState();
}

class _WirelismAppState extends State<WirelismApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: AppRoutes().getRoutes(context),
    );
  }
}
