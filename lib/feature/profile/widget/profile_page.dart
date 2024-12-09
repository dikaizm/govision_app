import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/auth/provider/auth_provider.dart';
import 'package:govision/feature/auth/provider/user_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/util/global.dart';
import 'package:govision/shared/widget/app_bar.dart';
import 'package:govision/shared/widget/button.dart';
import 'package:govision/shared/widget/list_tile.dart';

class ListMenu {
  final String title;
  final IconData icon;
  final Function()? onTap;

  ListMenu(this.title, this.icon, this.onTap);
}

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          title: 'Profil Saya',
          backgroundColor: AppColors.green,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
          iconColor: Colors.white,
        ),
        body: _widgetContent(context, ref));
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authNotifierProvider.notifier);

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            color: AppColors.green,
            height: 200,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 148),
              child: Column(
                children: [
                  _bodyAccount(context),
                  const SizedBox(height: 24),
                  _bodyGeneral(context),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomElevatedButton(
                      title: 'Keluar',
                      icon: Icons.logout,
                      color: Colors.red[700],
                      onPressed: () async {
                        await authNotifier.logout();
                        if (context.mounted) {
                          GoRouter.of(context).go(SignInRoute.path);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          _bodyBanner(context, ref),
        ],
      ),
    );
  }

  Widget _bodyGeneral(BuildContext context) {
    final List<ListMenu> listMenu = [
      ListMenu('Pusat bantuan', Icons.help, () {}),
      ListMenu('Tentang GoVision', Icons.info, () {}),
    ];

    // Define a function to generate the list with dividers
    List<Widget> generateListTiles() {
      final tiles = <Widget>[];
      for (var i = 0; i < listMenu.length; i++) {
        tiles
          ..add(
            CustomListTile(
              title: listMenu[i].title,
              icon: listMenu[i].icon,
              onTap: listMenu[i].onTap,
            ),
          )
          ..add(Divider(
            height: 1,
            color: Colors.grey[300],
            indent: 54,
          ));
      }
      return tiles;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Umum',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        ),
        Column(
          children: generateListTiles(),
        ),
      ],
    );
  }

  Widget _bodyAccount(BuildContext context) {
    final List<ListMenu> listMenu = [
      ListMenu('Profil saya', Icons.person, () {}),
      ListMenu('Kelola akun', Icons.gpp_maybe, () {}),
      ListMenu('Notifikasi', Icons.notifications, () {}),
      ListMenu('Bahasa', Icons.language, () {}),
    ];

    // Define a function to generate the list with dividers
    List<Widget> generateListTiles() {
      final tiles = <Widget>[];
      for (var i = 0; i < listMenu.length; i++) {
        tiles
          ..add(
            CustomListTile(
              title: listMenu[i].title,
              icon: listMenu[i].icon,
              onTap: listMenu[i].onTap,
            ),
          )
          ..add(Divider(
            height: 1,
            color: Colors.grey[300],
            indent: 54,
          ));
      }
      return tiles;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Akun',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        ),
        Column(
          children: generateListTiles(),
        ),
      ],
    );
  }

  Widget _bodyBanner(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);

    return Positioned(
      top: 25,
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.white,
                  width: 3,
                  strokeAlign: BorderSide.strokeAlignOutside),
            ),
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.black26,
              child: userState.when(
                loading: CircularProgressIndicator.new,
                loggedIn: (user) => Image.network(
                  user.photo!,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColors.green),
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
                  )),
                ),
                error: (e) => const Icon(
                  Icons.person,
                  size: 48,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
              userState.when(
                  loading: () => 'Loading...',
                  loggedIn: (user) => user.name,
                  error: (e) => e.toString()),
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              userState.when(
                  loading: () => 'Loading...',
                  loggedIn: (user) => getRoleName(user.role),
                  error: (e) => e.toString()),
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
