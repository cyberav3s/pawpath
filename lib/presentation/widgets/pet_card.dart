import 'package:example/core/constant/app_colors.dart';
import 'package:example/core/constant/app_spacing.dart';
import 'package:example/core/utils/extensions/text_style_extension.dart';
import 'package:example/core/widgets/card_image.dart';
import 'package:example/core/widgets/gap.dart';
import 'package:example/domain/entities/breed.dart';
import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  final Breed breed;
  final VoidCallback onTap;

  const PetCard({super.key, required this.breed, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool isPuppy = (breed.name?.length ?? 0) % 2 == 0;
    final bool isMale = (breed.name?.length ?? 0) % 3 == 0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.light,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Hero(
                      tag: breed.id ?? 'breed_${breed.name}',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CardImage(
                          url: breed.image?.url ?? breed.referenceImage!,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.light,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          size: 16,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap.v(AppSpacing.sm),
              Text(
                breed.name ?? 'Unknown',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                  fontSize: 16,
                ),
              ),
              const Gap.v(AppSpacing.xs),
              Text(
                breed.breedGroup ?? 'Companion',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColors.textDisabled,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: isPuppy
                          ? const Color(0xFFF3E5F5)
                          : const Color(0xFFFFF3E0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      isPuppy ? "Puppy" : "Adult",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: isPuppy
                            ? const Color(0xFF7B1FA2)
                            : const Color(0xFFE65100),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    isMale ? Icons.male : Icons.female,
                    size: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
              const Gap.v(AppSpacing.sm),
            ],
          ),
        ),
      ),
    );
  }
}
