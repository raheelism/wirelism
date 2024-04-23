import 'package:flutter/material.dart';
import 'package:wirelism/features/scanning/presentation/pages/scan_page.dart';
import 'package:wirelism/features/scanning/presentation/pages/scanning_page.dart';

class AppRoutes {
  getRoutes(BuildContext context) {
    return {
      '/': (context) => const ScanPage(),
      '/Scanning': (context) => const ScanningPage()
    };
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}