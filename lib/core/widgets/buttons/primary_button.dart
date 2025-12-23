import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isLoading,
  });

  final String label;
  final bool isLoading;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.primary,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: isLoading ? null : onPressed,
          child: Center(
            child: isLoading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.light,
                      ),
                      strokeWidth: 2,
                    ),
                  )
                : Text(label, style: context.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}