import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/doctor_profile/model/doctor_profile.dart';
import 'package:govision/feature/doctor_profile/provider/book_schedule_provider.dart';
import 'package:govision/feature/doctor_profile/provider/doctor_profile_provider.dart';
import 'package:govision/feature/doctor_profile/provider/time_slot_provider.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/util/snackbar.dart';
import 'package:govision/shared/widget/calendar.dart';

class DoctorProfilePage extends ConsumerStatefulWidget {
  const DoctorProfilePage({required this.userId, super.key});

  final String userId;

  @override
  _DoctorProfilePageState createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends ConsumerState<DoctorProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late DateTime _selectedDay;
  late int _selectedTimeSlot;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _selectedDay = DateTime.now();
    _selectedTimeSlot = -1;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        toolbarHeight: 64,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: _widgetContent(context, ref),
    );
  }

  Widget _widgetLoading(BuildContext context, WidgetRef ref) {
    ref
        .read(doctorProfileNotifierProvider.notifier)
        .fetchProfile(widget.userId);

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
    final profileState = ref.watch(doctorProfileNotifierProvider);

    return profileState.when(
      loading: () => _widgetLoading(context, ref),
      loaded: (data) => _widgetBody(context, data),
      error: (e) => Center(
        child: Text(e.toString()),
      ),
    );
  }

  Widget _widgetBody(BuildContext context, DoctorProfile data) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile photo from network
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey[200], // Placeholder background color
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: data.photo != null && data.photo!.isNotEmpty
                            ? Image.network(
                                data.photo!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                              AppColors.green),
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                    ),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) =>
                                    const Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.grey),
                                  ),
                                ),
                              )
                            : const Center(
                                child: Icon(
                                  Icons
                                      .person, // Default icon when no image is available
                                  size: 48,
                                  color: Colors.grey,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          data.specialization,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_hospital_rounded,
                              size: 16,
                              color: Colors.black38,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              data.institution,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 16,
                              color: Colors.black38,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${data.city}, ${data.province}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.lime.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      iconBadge(Icons.star, AppColors.green, '${data.rating}'),
                      Container(
                        height: 24,
                        width: 1,
                        color: Colors.black12,
                      ),
                      iconBadge(Icons.people, AppColors.green,
                          '${data.totalPatient}'),
                      Container(
                        height: 24,
                        width: 1,
                        color: Colors.black12,
                      ),
                      iconBadge(Icons.work_history_rounded, AppColors.green,
                          '${data.workYears} tahun'),
                    ],
                  ),
                ),
              ],
            )),
        // Tab Bar
        TabBar(
          controller: _tabController,
          indicatorColor: AppColors.green,
          labelColor: AppColors.green,
          unselectedLabelColor: Colors.black54,
          tabs: const [
            Tab(text: 'Jadwal Praktik'),
            Tab(text: 'Profil Dokter'),
          ],
        ),
        Divider(
          height: 0.5,
          color: Colors.grey[300],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _selectSchedule(context, data.schedules),
              _profileDetail(context, data),
            ],
          ),
        ),
      ],
    );
  }

  Widget _selectSchedule(BuildContext context, List<Schedule> schedules) {
    final timeSlotState = ref.watch(timeSlotNotifierProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: const Icon(
                  Icons.calendar_month_rounded,
                  color: AppColors.green,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              const Text('Pilih Tanggal yang Tersedia',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 8),
          Calendar(
            selectedDay: _selectedDay ?? DateTime.now(),
            onDaySelected: (day) {
              setState(() {
                _selectedDay = day;
                _selectedTimeSlot = -1;
              });

              ref
                  .read(timeSlotNotifierProvider.notifier)
                  .fetchTimeSlots(widget.userId, day);
            },
            availableDates: schedules.map((e) => e.date).toList(),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(99),
                ),
                child: const Icon(
                  Icons.access_time_filled_rounded,
                  color: AppColors.green,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              const Text('Pilih Jam yang Tersedia',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 8),
          timeSlotState.when(
              loading: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Kamu belum memilih tanggal',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
              loaded: (data) => Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    runAlignment: WrapAlignment.spaceEvenly,
                    children: data.map((e) {
                      return ButtonTime(
                        id: e.id,
                        isBooked: e.isBooked,
                        isSelected: _selectedTimeSlot == e.id,
                        text: '${e.startTime} - ${e.endTime}',
                        onPressed: () {
                          setState(() {
                            _selectedTimeSlot = e.id;
                          });
                        },
                      );
                    }).toList(),
                  ),
              error: (e) => Center(
                    child: Text(e.toString()),
                  ),
              empty: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Tidak ada jadwal yang tersedia',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  )),
          const SizedBox(height: 8),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              if (_selectedDay != null && _selectedTimeSlot != -1) {
                ref.read(bookScheduleNotifierProvider.notifier).bookSchedule(
                    BookScheduleParams(
                        date:
                            '${_selectedDay.year}-${_selectedDay.month}-${_selectedDay.day < 10 ? '0' + _selectedDay.day.toString() : _selectedDay.day}',
                        doctorUserId: widget.userId,
                        timeSlotId: _selectedTimeSlot));

                // Show snackbar
                showTopSnackBar(
                    context, "Berhasil booking jadwal", AppColors.green);

                // Reset selected day and time slot
                setState(() {
                  _selectedDay = DateTime.now();
                  _selectedTimeSlot = -1;
                });

                // Navigate to home
                ref.read(routerProvider).go(MainPatientRoute.path);
              } else {
                showTopSnackBar(context,
                    "Pilih tanggal dan jam terlebih dahulu", Colors.red);
              }
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 44),
              elevation: 0,
              backgroundColor: _selectedDay != null && _selectedTimeSlot != -1
                  ? AppColors.green
                  : Colors.grey[400],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            child: const Text('Booking Jadwal',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  Widget _profileDetail(BuildContext context, DoctorProfile data) {
    Widget _workExperience(List<Experience> exps) {
      if (exps.isEmpty) {
        return const Text('Pengalaman praktik belum diisi',
            style: TextStyle(color: Colors.black45));
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: exps.map((exp) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exp.institution,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  '${exp.startDate.year} - ${exp.endDate.year}',
                  style: TextStyle(color: Colors.black54),
                ),
                // if last item, no need to add divider
                if (exps.last != exp) const SizedBox(height: 12),
              ],
            );
          }).toList(),
        );
      }
    }

    Widget _education(List<Education> edus) {
      if (edus.isEmpty) {
        return const Text(
          'Pendidikan belum diisi',
          style: TextStyle(color: Colors.black45),
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: edus.map((edu) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  edu.university,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(edu.major),
                Text('${edu.startYear} - ${edu.endYear}'),
                // if last item, no need to add divider
                if (edus.last != edu) const SizedBox(height: 12),
              ],
            );
          }).toList(),
        );
      }
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileDetailItem(title: 'Tentang Saya', content: Text(data.bioDesc)),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
            height: 32,
          ),
          ProfileDetailItem(
              title: 'Pengalaman Praktik',
              content: _workExperience(data.experiences)),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
            height: 32,
          ),
          ProfileDetailItem(
              title: 'Pendidikan', content: _education(data.educations)),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget iconBadge(IconData icon, Color? iconColor, String text) {
    var iColor = AppColors.lime;

    if (iconColor != null) {
      iColor = iconColor;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: iColor),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ButtonTime extends StatelessWidget {
  const ButtonTime({
    required this.id,
    required this.isBooked,
    required this.text,
    required this.onPressed,
    required this.isSelected,
    super.key,
  });

  final int id;
  final bool isBooked;
  final bool isSelected;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isBooked ? null : onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: isBooked
            ? Colors.grey[100]
            : isSelected
                ? AppColors.green
                : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey[300]!, width: 1),
          borderRadius: BorderRadius.circular(99),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  const ProfileDetailItem({
    required this.title,
    required this.content,
    super.key,
  });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        content,
      ],
    );
  }
}
