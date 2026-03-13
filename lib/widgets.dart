import 'package:flutter/material.dart';

class Widgets {
  Widget buildAppBarIcon(
    IconData icon, {
    bool isPrimary = false,
    Color? color,
  }) {
    final brandColor = const Color(0xFF4A6CF7);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isPrimary ? brandColor : brandColor.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isPrimary ? Colors.white : (color ?? brandColor),
        size: 22,
      ),
    );
  } 
}