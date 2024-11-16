import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardFeature extends StatelessWidget {
  const CardFeature(
      {super.key,
      required this.title,
      this.subTitle,
      this.iconPath = 'assets/icons/scan-retina.svg',
      this.backgroundColor = AppColors.green,
      required this.route,
      this.height = 180});

  final String title;
  final String? subTitle;
  final String iconPath;
  final Color backgroundColor;
  final String route;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          context.push(route);
        },
        child: Ink(
          padding: const EdgeInsets.all(16),
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                iconPath,
                height: 50,
                width: 50,
              ),
              const SizedBox(height: 24),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              if (subTitle != null)
                Text(
                  subTitle!,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
            ],
          ),
        ),
      ),
    );
  }
}