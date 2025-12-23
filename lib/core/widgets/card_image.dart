import 'package:cached_network_image/cached_network_image.dart';
import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/constant/app_spacing.dart';
import 'package:example/core/widgets/shimmer_effect.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
    required this.url,
    required this.height,
    required this.width,
  });

  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.taritory,
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
        ),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(AppSpacing.sm),
      ),
      placeholder: (context, url) =>
          ShimmerEffect(height: height, width: width, borderRadius: 8),
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.taritory,
        ),
        alignment: Alignment.center,
        child: const Icon(Icons.error_outline),
      ),
    );
  }
}
