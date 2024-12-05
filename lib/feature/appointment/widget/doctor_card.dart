import 'package:flutter/material.dart';
import 'package:govision/feature/appointment/model/doctor_preview.dart';
import 'package:govision/feature/doctor_profile/widget/doctor_profile_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/widget/image_loader.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({required this.data, super.key});

  final DoctorPreview data;

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorProfilePage(
            userId: widget.data.userId,
          ),
        ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            // Profile photo from network
            ImageProfileLoader(
              imageUrl: widget.data.photo ?? '',
              size: 100,
              borderRadius: 24,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data.name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  widget.data.specialization,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${widget.data.city}, ${widget.data.province}',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    IconBadge(
                      icon:
                          const Icon(Icons.star, size: 18, color: Colors.amber),
                      text: '${widget.data.rating}',
                    ),
                    const SizedBox(width: 16),
                    IconBadge(
                      icon: const Icon(
                        Icons.work_history_rounded,
                        size: 18,
                        color: AppColors.green,
                      ),
                      text: '${widget.data.workYears} tahun',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  const IconBadge({
    super.key,
    required this.icon,
    required this.text,
  });

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
