import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/auth/provider/user_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.titleWidget,
    this.onLeadingPressed,
    this.leadingIcon = Icons.arrow_back_rounded,
    this.iconColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.titleTextStyle =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    this.titleSpacing = 0,
    this.centerTitle = false,
  });

  final String title;
  final Widget? titleWidget;
  final VoidCallback? onLeadingPressed;
  final IconData leadingIcon;
  final Color iconColor;
  final Color backgroundColor;
  final TextStyle titleTextStyle;
  final double titleSpacing;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: backgroundColor,
      title: (titleWidget != null)
          ? titleWidget
          : Text(title, style: titleTextStyle),
      titleSpacing: titleSpacing,
      leading: IconButton(
        icon: Icon(
          leadingIcon,
          color: iconColor,
        ),
        onPressed: onLeadingPressed ?? () => Navigator.of(context).pop(),
      ),
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MainAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.route = HomeRoute.path,
    this.title = '',
  });

  final String route;
  final String title;

  Icon _timeIcon() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 11) {
      return const Icon(Icons.wb_sunny, color: Colors.yellow, size: 36);
    } else if (hour >= 11 && hour < 15) {
      return const Icon(Icons.wb_sunny, color: Colors.orange, size: 36);
    } else if (hour >= 15 && hour < 18) {
      return const Icon(Icons.nightlight_round,
          color: Colors.deepOrange, size: 36);
    } else {
      return const Icon(Icons.nightlight_round, color: Colors.blue, size: 36);
    }
  }

  String _timeGreeting() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 11) {
      return 'Selamat pagi,';
    } else if (hour >= 11 && hour < 15) {
      return 'Selamat siang,';
    } else if (hour >= 15 && hour < 18) {
      return 'Selamat sore,';
    } else {
      return 'Selamat malam,';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);

    return AppBar(
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
      ),
      backgroundColor: Colors.white,
      toolbarHeight: 64,
      title: (route == HomeRoute.path)
          ? Row(
              children: [
                _timeIcon(),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _timeGreeting(),
                      style: const TextStyle(fontSize: 14),
                    ),
                    userState.when(
                      loggedIn: (user) => Text(
                        user.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      loading: () => const Text(
                        'Loading...',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      error: (e) => const Text(
                        'Error',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              children: [
                Image.asset(
                  'assets/app_logo_xs.png',
                  width: 32,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_rounded,
            color: Colors.black54,
          ),
          onPressed: () {
            context.push(NotificationRoute.path);
          },
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {
            context.push(ProfileRoute.path);
          },
          child: Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.green,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside),
                shape: BoxShape.circle,
              ),
              child: userState.when(
                  loading: () => const CircleAvatar(
                        radius: 18,
                        child: CircularProgressIndicator(),
                      ),
                  loggedIn: (user) {
                    if (user.photo != '') {
                      return CircleAvatar(
                        radius: 18,
                        child: Image.network(
                          user.photo!,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    AppColors.green),
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(
                            child: Icon(
                              Icons.error,
                              size: 48,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const CircleAvatar(
                        backgroundColor: AppColors.green,
                        radius: 18,
                        child: Icon(Icons.person),
                      );
                    }
                  },
                  error: (e) => const CircleAvatar(
                        radius: 18,
                        child: Icon(Icons.person),
                      ))),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
