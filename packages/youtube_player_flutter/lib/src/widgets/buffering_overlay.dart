import 'package:flutter/material.dart';

class BufferingOverlay extends StatelessWidget {
  const BufferingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🔹 Overlay: dark edges
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black, // top edge
                Colors.black.withValues(alpha: 0.2), // middle
                Colors.black, // bottom edge
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black, // left edge
                Colors.black.withValues(alpha: 0.2), // middle
                Colors.black, // right edge
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}
