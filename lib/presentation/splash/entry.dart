import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../gen/assets.gen.dart';

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashBgColor,
      body: Center(
        child: Image.asset(
          Assets.images.icon.path,
          width: 200,
        ),
      ),
    );
  }
}
