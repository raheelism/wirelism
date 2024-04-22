import 'package:flutter/material.dart';
import 'package:wirelism/app/widgets/appbar.dart';

class WirelismApp extends StatefulWidget {
  const WirelismApp({super.key});

  @override
  State<WirelismApp> createState() => _WirelismAppState();
}

class _WirelismAppState extends State<WirelismApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildAppBody(context),
      appBar: buildAppbar(context),
    );
  }


  Widget buildAppBody(BuildContext context) {
    return Center(
      heightFactor: 12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.park_outlined),
              SizedBox(width: 16.0),
              Text('Wirelism'),
            ],
          ),
          const Expanded(
              child: Icon(
            Icons.bluetooth,
            size: 75,
          )),
          const SizedBox(height: 16.0),
          const Text('Scan for nearby\nRia Smart devices'),
          const SizedBox(height: 16.0),
          ElevatedButton(
            child: const Text('Scan'),
            onPressed: () {},
          ),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              // Handle clickable text press
            },
            child: const Text('Learn more'),
          ),
        ],
      ),
    );
  }
}



