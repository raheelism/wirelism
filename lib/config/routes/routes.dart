import 'package:flutter/material.dart';
import 'package:wirelism/features/connecting/presentation/pages/available_devices_page.dart';
import 'package:wirelism/features/connecting/presentation/pages/connecting_page.dart.dart';
import 'package:wirelism/features/home/presentation/pages/home_page.dart';
import 'package:wirelism/features/recorded/presentation/pages/recorded_page.dart';
import 'package:wirelism/features/scanning/presentation/pages/scan_page.dart';
import 'package:wirelism/features/scanning/presentation/pages/scanning_page.dart';
import 'package:wirelism/features/settings/presentation/pages/settings_page.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const ScanPage());
      case '/Scanning':
        return _materialRoute(const ScanningPage());
      case '/availableDevice':
        return _materialRoute(const AvailableDevices());
      case '/connecting':
        return _materialRoute(const ConnectingPage());
      case '/home':
        return _materialRoute(const HomePage());
      case '/setting':
        return _materialRoute(const SettingsPage());
      case '/recorded':
        return _materialRoute(const RecordedPage());
      default:
        return _materialRoute(const ScanPage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}