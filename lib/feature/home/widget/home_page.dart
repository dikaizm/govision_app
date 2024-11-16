import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/home/provider/home_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';
import 'package:govision/shared/widget/card_feature.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const MainAppBar(),
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
            SizedBox(height: 8),
            _bodyMainFeatures(context, ref),
            _bodyAppointment(context, ref),
            _bodyArticle(context, ref),
            // Text(data),
          ],
        ),
      ),
      error: (message) => Center(
        child: Text(message),
      ),
    );
  }

  Widget _bodyMainFeatures(BuildContext ctx, WidgetRef ref) {
    // IconData icon =

    return Container(
      margin: const EdgeInsets.all(16),
      child: const Column(
        children: [
          Row(
            children: [
              CardFeature(
                title: 'Foto Retina',
                iconPath: 'assets/icons/scan-retina.svg',
                route: FundusCaptureRoute.path,
                subTitle: 'Ambil foto retina untuk melihat kesehatan mata',
              ),
              SizedBox(width: 16),
              CardFeature(
                title: 'Konsultasi',
                iconPath: 'assets/icons/consultation.svg',
                route: AppointmentRoute.path,
                subTitle: 'Konsultasi dengan dokter mata',
                backgroundColor: AppColors.lime,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyAppointment(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jadwal Konsultasi',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text('Lihat Semua', style: TextStyle(color: AppColors.green)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            alignment: Alignment.center,
            height: 120,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 328,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'dr. Rudi',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.pin_drop,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 4),
                                      Text('Senin, 9 Desember 2024'),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 54,
                                height: 54,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            Text('08.00 - 10.00'),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _bodyArticle(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rekomendasi Artikel',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text('Lihat Semua', style: TextStyle(color: AppColors.green)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            alignment: Alignment.center,
            height: 172,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                            'Perawatan Mata yang Tepat di Era Digital',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
