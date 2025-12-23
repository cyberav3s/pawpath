import 'package:example/core/constant/app_colors.dart';
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 32,
        width: 32,
        child: CircularProgressIndicator.adaptive(
          backgroundColor: AppColors.primary,
          strokeWidth: 2.5,
          valueColor: AlwaysStoppedAnimation<Color>(
            AppColors.light,
          ),
        ),
      ),
    );
  }
}
