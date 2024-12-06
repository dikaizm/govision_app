import 'package:flutter/material.dart';
import 'package:govision/shared/constants/app_theme.dart';

void showTopSnackBar(BuildContext context, String message, Color? bgColor) {
  Color backgroundColor;
  if (bgColor == null) {
    backgroundColor = AppColors.green;
  } else {
    backgroundColor = bgColor;
  }

  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).padding.top + 72, // Adjust as needed
      left: 10,
      right: 10,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.info, color: Colors.white),
              const SizedBox(width: 10),
              Expanded(
                child: Text(message, style: const TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);
  Future.delayed(const Duration(seconds: 3)).then((_) => overlayEntry.remove());
}
