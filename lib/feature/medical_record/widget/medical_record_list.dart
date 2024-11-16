import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/fundus_record/widget/fundus_list_option.dart';
import 'package:govision/shared/route/app_router.dart';

class MedicalRecordList extends ConsumerStatefulWidget {
  const MedicalRecordList({super.key});

  @override
  MedicalRecordListState createState() => MedicalRecordListState();
}

class MedicalRecordListState extends ConsumerState<MedicalRecordList> {
  @override
  Widget build(BuildContext context) {
    return // List of fundus history
        Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          for (int index = 0; index < 3; index++)
            Column(
              children: [
                Material(
                  // Wrap InkWell with Material
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      context.push(MedicalRecordDetailRoute.path);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/med_record_example.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DIAGNOSIS',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text(
                                        'Normal',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    '12/12/2021',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[600]),
                                  )
                                ],
                              ),
                            ],
                          ),

                          // Option icon
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
                              // Show option menu
                              // Define your options
                              final List<BottomSheetOption> options = [
                                BottomSheetOption(
                                  title: 'Unduh',
                                  icon: Icon(Icons.download_rounded),
                                  onTap: () {
                                    print('Option 1 selected');
                                    // Add your custom logic here for Option 2
                                  },
                                ),
                                // Add more options as needed
                              ];

                              // Show the bottom sheet
                              buildBottomSheetOption(context, options);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
        ],
      ),
    );
  }
}
