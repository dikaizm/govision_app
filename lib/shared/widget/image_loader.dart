import 'package:flutter/material.dart';
import 'package:govision/shared/constants/app_theme.dart';

class ImageProfileLoader extends StatelessWidget {
  const ImageProfileLoader({
    super.key,
    required this.imageUrl,
    this.size = 100,
    this.borderRadius = 24,
  });

  final String imageUrl;
  final double size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.grey[200], // Placeholder background color
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(AppColors.green),
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                  ),
                ),
              )
            : const Center(
                child: Icon(
                  Icons.person, // Default icon when no image is available
                  size: 48,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }
}