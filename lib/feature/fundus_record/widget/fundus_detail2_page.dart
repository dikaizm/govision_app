import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/fundus_record/provider/fundus_provider.dart';
import 'package:govision/shared/widget/image_loader.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/util/global.dart';
import 'package:govision/shared/widget/app_bar.dart';

class FundusDetail2Page extends ConsumerStatefulWidget {
  const FundusDetail2Page({
    super.key,
    required this.fundusId,
  });

  final int fundusId;

  @override
  FundusDetail2PageState createState() => FundusDetail2PageState();
}

class FundusDetail2PageState extends ConsumerState<FundusDetail2Page> {
  String? _baseUrl;

  @override
  void initState() {
    super.initState();
    _baseUrl = dotenv.env['BASE_URL'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const CustomAppBar(
          title: 'Hasil Funduskopi',
        ),
        body: _widgetContent(context, ref));
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final fundusState = ref.watch(fundusDetailNotifierProvider);

    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: fundusState.when(
          loading: () {
            ref
                .read(fundusDetailNotifierProvider.notifier)
                .fetchFundusDetail(widget.fundusId);
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          loaded: (data) {
            final formattedDate = DateFormat('EEEE, d MMMM y', 'id')
                .format(DateTime.parse(data.createdAt));
            final formattedTime = DateFormat('HH:mm', 'id')
                .format(DateTime.parse(data.createdAt));

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image fundus
                Column(
                  children: [
                    ImageProfileLoader(
                      imageUrl: '${_baseUrl!}/fundus/image/${data.imageUrl}',
                      size: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                  width: 1,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                  Icons.access_time_filled_rounded,
                                  size: 20,
                                  color: Colors.black54),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              formattedDate,
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Text('•', style: TextStyle(color: Colors.black54)),
                        const SizedBox(width: 8),
                        Text(
                          formattedTime,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    )
                  ],
                ),

                Divider(
                  height: 32,
                  thickness: 1,
                  color: Colors.grey[300],
                ),

                // Prediction result
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hasil Prediksi',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'TERINDIKASI',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        getConditionName(data.predictedDisease as String),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Feedback from doctor
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              if (data.verifyStatus == 'pending')
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.orange,
                                ),
                              if (data.verifyStatus == 'verified')
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: AppColors.green,
                                ),
                              if (data.verifyStatus == 'rejected')
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.red,
                                ),
                              if (data.verifyStatus == 'on_review')
                                const CircleAvatar(
                                  radius: 5,
                                  backgroundColor: AppColors.lime,
                                ),
                              const SizedBox(width: 8),
                              Text(getStatusName(data.verifyStatus),
                                  style: const TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.green10,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: (data.verifyStatus == 'verified')
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Feedback Dokter',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    if (data.feedbacks != null)
                                      Column(
                                        children: [
                                          for (var fb in data.feedbacks)
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(fb.doctorName,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors
                                                                .black87)),
                                                    Text(
                                                        DateFormat('dd/MM/yyyy',
                                                                "id")
                                                            .format(DateTime
                                                                .parse(fb
                                                                    .updatedAt)),
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black45,
                                                        )),
                                                  ],
                                                ),
                                                Text(
                                                  fb.notes,
                                                  style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black87),
                                                ),
                                                if (fb != data.feedbacks.last)
                                                  const SizedBox(height: 12),
                                              ],
                                            ),
                                        ],
                                      )
                                    else
                                      const Text(
                                        'Tidak ada feedback',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                        ),
                                      ),
                                  ],
                                )
                              : (data.verifyStatus == 'on_review')
                                  ? Text(
                                      'Hasil sedang dalam proses verifikasi oleh dokter profesional.')
                                  : Column(
                                      children: [
                                        const Text(
                                            'Minta verifikasi dokter profesional untuk memastikan hasil deteksi aplikasi valid.'),
                                        const SizedBox(height: 12),
                                        ElevatedButton(
                                          onPressed: () {
                                            // Call API to verify fundus result
                                            // Dialog modal to show confirmation verify has been sent
                                            ref
                                                .read(
                                                    fundusDetailNotifierProvider
                                                        .notifier)
                                                .requestVerifyFundus(
                                                    widget.fundusId);

                                            _showConfirmationDialog(context);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            minimumSize:
                                                const Size(double.infinity, 40),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 12),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: AppColors.green,
                                          ),
                                          child: const Text(
                                            'Verifikasi Hasil',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ))
                    ],
                  ),
                ),
              ],
            );
          },
          error: (e) => Center(
            child: Text(
              e.toString(),
              style: const TextStyle(color: Colors.red),
            ),
          ),
          empty: () => SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: const Center(
              child: Text(
                'Tidak ada rekam fundus',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ));
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Permintaan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          content: const Text(
            'Permintaan verifikasi fundus telah dikirim.',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(AppColors.green10),
              ),
              child: const Text(
                'OK',
                style: TextStyle(color: AppColors.green),
              ),
            ),
          ],
        );
      },
    );
  }
}

String getStatusName(String status) {
  switch (status) {
    case 'verified':
      return 'Terverifikasi';
    case 'pending':
      return 'Belum Terverifikasi';
    case 'rejected':
      return 'Ditolak';
    case 'on_review':
      return 'Sedang Direview';
    default:
      return 'Belum Terverifikasi';
  }
}
