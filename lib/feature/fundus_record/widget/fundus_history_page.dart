import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/fundus_record/provider/fundus_provider.dart';
import 'package:govision/feature/fundus_record/widget/fundus_detail2_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/util/snackbar.dart';
import 'package:govision/shared/widget/image_loader.dart';
import 'package:intl/intl.dart';
import 'package:govision/feature/fundus_record/widget/fundus_list_option.dart';
import 'package:govision/shared/util/global.dart';

class FundusHistoryList2 extends ConsumerStatefulWidget {
  const FundusHistoryList2({super.key});

  @override
  FundusHistoryList2State createState() => FundusHistoryList2State();
}

class FundusHistoryList2State extends ConsumerState<FundusHistoryList2> {
  String? _baseUrl;

  @override
  void initState() {
    super.initState();
    _baseUrl = dotenv.env['BASE_URL'];
  }

  @override
  Widget build(BuildContext context) {
    final fundusState = ref.watch(fundusHistoryNotifierProvider);

    return fundusState.when(
        empty: () => SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: const Center(
                child: Text(
                  'Tidak ada rekam fundus',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
        loading: () => SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        loaded: (funduses) {
          return Column(
            children: funduses.map((fundus) {
              final formattedDate =
                  DateFormat('EEEE, d MMMM y', 'id').format(fundus.createdAt);
              final formattedTime =
                  DateFormat('HH:mm', 'id').format(fundus.createdAt);

              return Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(24),
                      onTap: () async {
                        await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FundusDetail2Page(
                            fundusId: fundus.id,
                          ),
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ImageProfileLoader(
                                imageUrl:
                                    '${_baseUrl!}/fundus/image/${fundus.imageUrl}',
                                size: 80,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'TERINDIKASI',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          if (fundus.verifyStatus == 'pending')
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.orange,
                                            ),
                                          if (fundus.verifyStatus == 'verified')
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: AppColors.green,
                                            ),
                                          if (fundus.verifyStatus == 'rejected')
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.red,
                                            ),
                                          if (fundus.verifyStatus ==
                                              'on_review')
                                            const CircleAvatar(
                                              radius: 5,
                                              backgroundColor: AppColors.lime,
                                            ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            getConditionName(fundus
                                                .predictedDisease as String),
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        formattedDate,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Text(
                                        formattedTime,
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.more_horiz_rounded),
                            ),
                            onPressed: () {
                              final List<BottomSheetOption> options = [
                                if (fundus.verifyStatus == 'pending')
                                  BottomSheetOption(
                                    title: 'Minta Verifikasi',
                                    icon: Icon(Icons.verified_rounded),
                                    onTap: () {
                                      ref
                                          .read(fundusDetailNotifierProvider
                                              .notifier)
                                          .requestVerifyFundus(fundus.id);

                                      ref.read(fundusHistoryNotifierProvider.notifier).updateVerifyFundus(fundus.copyWith(verifyStatus: 'on_review'));

                                      showTopSnackBar(
                                          context,
                                          'Permintaan verifikasi rekam fundus berhasil dikirim',
                                          null);
                                    },
                                  ),
                                BottomSheetOption(
                                  title: 'Hapus',
                                  icon: Icon(Icons.delete_rounded),
                                  onTap: () async {
                                    bool? confirmed = await showDialog<bool>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Konfirmasi Hapus'),
                                          content: const Text(
                                              'Apakah Anda yakin ingin menghapus rekam fundus ini?'),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context)
                                                      .pop(false),
                                              child: const Text('Batal'),
                                            ),
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context)
                                                      .pop(true),
                                              style: ButtonStyle(
                                                overlayColor:
                                                    WidgetStateProperty.all(
                                                        Colors.red[50]),
                                              ),
                                              child: const Text(
                                                'Hapus',
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    if (confirmed == true) {
                                      // Perform deletion
                                      ref
                                          .read(fundusHistoryNotifierProvider
                                              .notifier)
                                          .deleteFundus(fundus.id);

                                      showTopSnackBar(context,
                                          'Fundus berhasil dihapus', null);
                                    }
                                  },
                                ),
                              ];
                              buildBottomSheetOption(context, options);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (funduses.last != fundus) const SizedBox(height: 16),
                ],
              );
            }).toList(),
          );
        },
        error: (error) => Center(
              child: Text(
                error.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            ));
  }
}
