import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/constant/app_spacing.dart';
import 'package:example/core/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final Function(String) onChanged;
  final String hintText;
  final Widget? trailingIcon;
  final FocusNode? focusNode;
  final TextEditingController controller;
  final bool hasLeading;

  const CustomSearchBar({
    super.key,
    required this.onChanged,
    required this.hintText,
    this.trailingIcon,
    this.focusNode,
    this.hasLeading = true,
    required this.controller,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: BoxBorder.all(color: AppColors.border),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xlg,
        vertical: AppSpacing.sm,
      ),
      child: TextField(
        cursorColor: AppColors.text,
        controller: widget.controller,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        style: context.bodyMedium,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: context.bodyMedium?.copyWith(
            color: AppColors.textDisabled,
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 20,
              color: AppColors.textDisabled,
            ),
          ),
          suffixIcon: widget.trailingIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.border, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.transparent,
              width: 1.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
        ),
      ),
    );
  }
}
