import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:govision/feature/home/provider/home_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/http/app_exception.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HealthFacilityPage extends ConsumerWidget {
  const HealthFacilityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: AppColors.green,
          scrolledUnderElevation: 0,
          toolbarHeight: 64,
          leading: IconButton(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(Icons.arrow_back_rounded),
            ),
            onPressed: () {
              context.pop();
            },
          ),
          titleSpacing: 0,
          title: Row(children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    hintText: 'Cari fasilitas kesehatan',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                    border: InputBorder.none,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:
                          BorderSide(color: Colors.white.withOpacity(0.7)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            IconButton(
              icon: Container(
                padding: const EdgeInsets.all(4),
                child: const Icon(Icons.filter_alt_outlined),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: () {},
            ),
          ])),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetLoading(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('loading'.tr()),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeNotifierProvider);

    return homeState.when(
      loading: () => _widgetLoading(context, ref),
      loaded: (data) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            _bodyHero(context, ref),
            const SizedBox(height: 8),
            _bodyDoctorList(context, ref),
          ],
        ),
      ),
      error: (message) => Center(
        child: Text(message),
      ),
    );
  }

  Widget _bodyHero(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 100,
      decoration: const BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pilih Lokasi',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
              'Jadwalkan deteksi cepat fundus di fasilitas kesehatan terdekat.',
              style: TextStyle(color: Colors.white, fontSize: 14))
        ],
      ),
    );
  }

  Widget _bodyDoctorList(BuildContext context, WidgetRef ref) {
    Widget iconBadge(IconData icon, Color? iconColor, String text) {
      var iColor = AppColors.lime;

      if (iconColor != null) {
        iColor = iconColor;
      }

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(icon, size: 16, color: iColor),
            const SizedBox(width: 6),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
          ],
        ),
      );
    }

    Widget cardDoctor() {
      return InkWell(
        onTap: () {
          context.push(DoctorProfileRoute.path);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Klinik Sukabirus',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text('Jl. Sukabirus No. 12, Bandung'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      iconBadge(Icons.device_hub, null, '3 alat'),
                      const SizedBox(width: 8),
                      iconBadge(Icons.star, Colors.orange, '4.5'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    final cardDoctors = <Widget>[];
    for (var i = 0; i < 10; i++) {
      cardDoctors.add(cardDoctor());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cardDoctors,
    );
  }
}
