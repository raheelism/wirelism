import 'package:flutter/material.dart';
import 'package:wirelism/app/wirelism_app_body.dart';
class WirelismApp extends StatefulWidget {
  const WirelismApp({super.key});

  @override
  State<WirelismApp> createState() => _WirelismAppState();
}

class _WirelismAppState extends State<WirelismApp> implements WirelismAppBody{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildAppBody(context),
      appBar: buildAppBar(context),
    );
  }

  @override
  PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar();

  }

  @override
  Widget buildAppBody(BuildContext context) {
    return const Center(
      child: Text("Wirelism"),
    );
  }
}



