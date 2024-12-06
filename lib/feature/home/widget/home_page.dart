import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/education/provider/article2_provider.dart';
import 'package:govision/feature/home/provider/appointment_provider.dart';
import 'package:govision/feature/home/provider/hero_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';
import 'package:govision/shared/widget/card_feature.dart';
import 'package:govision/shared/widget/image_loader.dart';

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
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
        ),
      ),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final heroState = ref.watch(heroNotifierProvider);

    Future<void> _onRefresh() async {
      ref.read(appointmentNotifierProvider.notifier).fetchAppointments();
      ref.read(article2NotifierProvider.notifier).fetchArticles();
      ref.read(heroNotifierProvider.notifier).fetchHero();
    }

    return RefreshIndicator(
      onRefresh: _onRefresh,
      color: AppColors.green,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            // Kondisi fundus kamu
            heroState.when(
              loading: () => Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
                  ),
                ),
              ),
              loaded: (data) => Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.green10,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KONDISI FUNDUS',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Normal',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(99),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Lihat'),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STATUS DIABETES',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Penderita Diabetes Tipe 1',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lakukan pemeriksaan setiap 12 bulan'),
                        GestureDetector(
                            onTap: () {
                              _showRecommendationDetailModalBottomSheet(
                                  context);
                            },
                            child: Icon(
                              Icons.info_rounded,
                              color: AppColors.green,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              error: (e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(24),
                ),
                alignment: Alignment.center,
                child: Center(
                  child: Text(e.toString()),
                ),
              ),
              empty: SizedBox.shrink,
            ),
            _bodyMainFeatures(context, ref),
            _bodyAppointment(context, ref),
            _bodyArticle(context, ref),
          ],
        ),
      ),
    );
  }

  void _showRecommendationDetailModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Rekomendasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.close),
                  )
                ],
              ),
            ),
            Divider(color: Colors.grey[300], thickness: 0.5),
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 16),
              child: Column(
                children: [
                  Text(
                    'Pasien diabetes tanpa tanda-tanda retinopati disarankan untuk melakukan pemeriksaan fundus tahunan untuk mendeteksi perubahan dini.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: AppColors.green),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Mengerti',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
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
                title: 'Foto Fundus',
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
    final appointmentState = ref.watch(appointmentNotifierProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Konsultasi Minggu Ini',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text('Lihat Semua', style: TextStyle(color: AppColors.green)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          appointmentState.when(
              empty: () {
                return Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 100,
                  child: const Text('Tidak ada jadwal konsultasi',
                      style: TextStyle(color: Colors.grey)),
                );
              },
              loading: () => _widgetLoading(context, ref),
              loaded: (data) {
                return Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            //
                          },
                          child: Container(
                            width: data.length > 1
                                ? MediaQuery.of(context).size.width * 0.8
                                : MediaQuery.of(context).size.width - 32,
                            margin: index == data.length - 1
                                ? EdgeInsets.zero
                                : const EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: const BoxDecoration(
                                    color: AppColors.green20,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      ImageProfileLoader(
                                          imageUrl: data[index].doctorPhoto,
                                          size: 48),
                                      const SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data[index].doctorName,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            data[index].doctorSpecialization,
                                            style:
                                                const TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: AppColors.green10,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24),
                                    ),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16, top: 12),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_rounded,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(width: 6),
                                          Text(data[index].location),
                                        ],
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time_filled_rounded,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(width: 6),
                                          Text(data[index]
                                              .date
                                              .toLocal()
                                              .toString()
                                              .split(' ')[0]),
                                          const SizedBox(width: 4),
                                          const Text(' • '),
                                          const SizedBox(width: 4),
                                          Text(
                                              '${data[index].startTime} - ${data[index].endTime}'),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              },
              error: (e) {
                return Center(
                  child: Text(e.toString()),
                );
              })
        ],
      ),
    );
  }

  Widget _bodyArticle(BuildContext context, WidgetRef ref) {
    final articleState = ref.watch(article2NotifierProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rekomendasi Artikel',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text('Lihat Semua', style: TextStyle(color: AppColors.green)),
            ],
          ),
          const SizedBox(height: 12),
          articleState.when(
              empty: () {
                return Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 172,
                  child: const Text('Tidak ada artikel',
                      style: TextStyle(color: Colors.grey)),
                );
              },
              error: (e) {
                return Center(
                  child: Text(e.toString()),
                );
              },
              loading: () => _widgetLoading(context, ref),
              loaded: (data) => Container(
                    alignment: Alignment.center,
                    height: 172,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            margin: EdgeInsets.only(
                                right: index == data.length - 1 ? 0 : 16),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: AppColors.lime,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Image.network(
                                    data[index].image,
                                    height: double.infinity,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child; // Show the image once loaded
                                      } else {
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    (loadingProgress
                                                            .expectedTotalBytes ??
                                                        1)
                                                : null,
                                          ),
                                        ); // Show a loading spinner while the image is loading
                                      }
                                    },
                                    errorBuilder: (BuildContext context,
                                        Object error, StackTrace? stackTrace) {
                                      return Center(
                                        child: Icon(Icons.image,
                                            size: 40,
                                            color: Colors
                                                .black54), // Show an error icon if the image fails to load
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(data[index].title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          );
                        }),
                  )),
        ],
      ),
    );
  }
}
