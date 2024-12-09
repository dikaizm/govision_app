import 'package:flutter/material.dart';
import 'package:govision/shared/constants/app_theme.dart';

class ImageProfileLoader extends StatelessWidget {
  const ImageProfileLoader({
    super.key,
    this.imageUrl = '',
    this.size = 100,
    this.borderRadius = 24,
    this.shape = BoxShape.rectangle,
  });

  final String imageUrl;
  final double size;
  final double borderRadius;
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: shape == BoxShape.rectangle
            ? BorderRadius.circular(borderRadius)
            : null,
        color: Colors.grey[200],
        shape: shape,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: imageUrl != ''
            ? Image.network(
                imageUrl,
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
                  child: Icon(
                    Icons.error,
                    size: 48,
                    color: Colors.grey,
                  ),
                ),
              )
            : const Center(
                child: Icon(
                  Icons.image, // Default icon when no image is available
                  size: 48,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }
}
