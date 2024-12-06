import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/appointment/model/doctor_preview.dart';
import 'package:govision/feature/appointment/provider/doctors_provider.dart';
import 'package:govision/feature/appointment/widget/doctor_card.dart';
import 'package:govision/shared/constants/app_theme.dart';

class AppointmentPage extends ConsumerWidget {
  const AppointmentPage({super.key});

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
                    hintText: 'Cari dokter',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Icon(Icons.filter_alt_outlined),
              ),
              onPressed: () {},
            ),
          ])),
      body: Column(
        children: [
          _bodyHero(context, ref),
          const SizedBox(height: 8),
          _widgetContent(context, ref)
        ],
      ),
    );
  }

  Widget _widgetLoading(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
      child: const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
        ),
      ),
    );
  }

  Widget _widgetContent(BuildContext context, WidgetRef ref) {
    final doctorListState = ref.watch(doctorsNotifierProvider);

    return doctorListState.when(
      loading: () => _widgetLoading(context, ref),
      loaded: (data) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: _bodyDoctorList(context, ref, data),
      ),
      error: (e) => Center(
        child: Text(e.toString()),
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
            'Pilih Dokter',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
              'Jadwalkan janji temu dengan dokter untuk menindaklanjuti hasil periksa mandiri di aplikasi.',
              style: TextStyle(color: Colors.white, fontSize: 12))
        ],
      ),
    );
  }

  Widget _bodyDoctorList(
      BuildContext context, WidgetRef ref, List<DoctorPreview> data) {
    final cardDoctors = data
        .map(
          (e) => DoctorCard(
            data: DoctorPreview(
              userId: e.userId,
              name: e.name,
              photo: e.photo,
              specialization: e.specialization,
              rating: e.rating,
              workYears: e.workYears,
              city: e.city,
              province: e.province,
            ),
          ),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cardDoctors,
    );
  }
}
