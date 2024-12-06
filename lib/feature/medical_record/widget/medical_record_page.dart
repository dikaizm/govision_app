import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/fundus_record/widget/fundus_history_list.dart';
import 'package:govision/feature/fundus_record/widget/fundus_history_page.dart';
import 'package:govision/feature/medical_record/widget/medical_record_list.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';

class MedicalRecordPage extends ConsumerStatefulWidget {
  const MedicalRecordPage({super.key});

  @override
  MedicalRecordPageState createState() => MedicalRecordPageState();
}

class MedicalRecordPageState extends ConsumerState<MedicalRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const MainAppBar(
          title: 'Riwayat Funduskopi',
          route: MedicalRecordRoute.path,
        ),
        body: FundusHistoryList2());
  }
}
