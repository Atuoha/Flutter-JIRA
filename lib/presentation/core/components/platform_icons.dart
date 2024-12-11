import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class PlatformIcon extends StatelessWidget {
  final IconData iosIcon;
  final IconData androidIcon;
  final Color color;
  final double size;

  const PlatformIcon({
    super.key,
    required this.iosIcon,
    required this.androidIcon,
    this.color = Colors.white,
    this.size = 24.0
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      kIsWeb? androidIcon: Platform.isIOS ? iosIcon : androidIcon,
      color: color,
      size: size,
    );
  }
}

