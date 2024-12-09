import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/fundus_record/provider/fundus_provider.dart';
import 'package:govision/feature/fundus_record/widget/fundus_history_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/widget/app_bar.dart';

class MedicalRecordPage extends ConsumerStatefulWidget {
  const MedicalRecordPage({super.key});

  @override
  MedicalRecordPageState createState() => MedicalRecordPageState();
}

class MedicalRecordPageState extends ConsumerState<MedicalRecordPage> {
  Future<void> _onRefresh() async {
    ref.read(fundusHistoryNotifierProvider.notifier).fetchFundusHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: const MainAppBar(
          title: 'Riwayat Funduskopi',
          route: MedicalRecordRoute.path,
        ),
        body: RefreshIndicator(
            onRefresh: _onRefresh,
            color: AppColors.green,
            child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(16),
                child: FundusHistoryList2())));
  }
}
