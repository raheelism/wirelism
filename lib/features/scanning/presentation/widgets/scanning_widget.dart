import 'package:flutter/material.dart';

class ScanningWidget extends StatefulWidget {
  const ScanningWidget({super.key});

  @override
  _ScanningWidgetState createState() => _ScanningWidgetState();
}

class _ScanningWidgetState extends State<ScanningWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  static const double initialSize = 175.0;
  static const double stepSize = 50.0;
  static const double totalDuration = 2.0;
  static const double delayBetweenRings = 0.5;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          color: Colors.transparent,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildDelayedCircle(0, initialSize),
                _buildDelayedCircle(1, initialSize + stepSize),
                _buildDelayedCircle(2, initialSize + 2 * stepSize),
                const Icon(
                  Icons.bluetooth,
                  size: 75,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDelayedCircle(int index, double size) {
    final double startTime = index * delayBetweenRings;
    final double endTime = startTime + totalDuration;

    return AnimatedOpacity(
      opacity: _animation.value.clamp(0.0, 1.0),
      duration: const Duration(seconds: 0),
      curve: Interval(startTime / totalDuration, endTime / totalDuration,
          curve: Curves.easeInOut),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.shade100.withOpacity(0.2),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
