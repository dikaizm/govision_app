import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/auth/widget/register_page.dart';
import 'package:govision/feature/profile/model/patient.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/util/snackbar.dart';
import 'package:govision/shared/widget/app_bar.dart';

class CreatePatientProfilePage extends ConsumerStatefulWidget {
  const CreatePatientProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<CreatePatientProfilePage> createState() =>
      _CreatePatientProfilePageState();
}

class _CreatePatientProfilePageState
    extends ConsumerState<CreatePatientProfilePage> {
  final List<String> diabetesTypes = ['Type 1', 'Type 2', 'Gestational'];

  final diabetesHistoryController = TextEditingController();
  final diabetesTypeController = TextEditingController();
  final diagnosisDateController = TextEditingController();

  bool isDiabetes = false;

  @override
  void initState() {
    super.initState();
    diabetesHistoryController.addListener(() {
      final isNowDiabetes = diabetesHistoryController.text == 'Ya';
      if (isNowDiabetes != isDiabetes) {
        setState(() {
          isDiabetes = isNowDiabetes;
        });
      }
    });
  }

  @override
  void dispose() {
    diabetesHistoryController.dispose();
    diabetesTypeController.dispose();
    diagnosisDateController.dispose();
    super.dispose();
  }

  Future<void> _submitProfile(BuildContext context) async {
    if (diabetesHistoryController.text.isEmpty) {
      showTopSnackBar(context, 'Anda belum mengisi profil', Colors.red[700]);
      return;
    }

    if (diabetesHistoryController.text == 'Ya' &&
        (diabetesTypeController.text.isEmpty ||
            diagnosisDateController.text.isEmpty)) {
      showTopSnackBar(context, 'Anda belum melengkapi profil', Colors.red[700]);
      return;
    }

    try {
      final requestBody = PatientProfile(
        diabetesHistory: diabetesHistoryController.text == 'Ya',
        diabetesType: diabetesTypeController.text,
        diagnosisDate: diagnosisDateController.text,
      );

      final createProfileRes = await ref
          .read(apiProvider)
          .post('/user/profile/patient', requestBody.toJson());

      await createProfileRes.when(
        success: (response) async {
          // Refresh user completed profile state
          showTopSnackBar(context, 'Profil berhasil dibuat', AppColors.green);
          ref.read(routerProvider).go(MainPatientRoute.path);
        },
        error: (error) {
          showTopSnackBar(context, error.toString(), Colors.red[700]);
        },
      );
    } catch (e) {
      showTopSnackBar(context, e.toString(), Colors.red[700]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Lengkapi Profil Pasien',
        onLeadingPressed: () {
          showTopSnackBar(
              context, 'Mohon lengkapi profil Anda', Colors.red[700]);
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Apakah Anda penderita diabetes?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            RadioGender(
              genderOptions: ['Ya', 'Tidak'],
              controller: diabetesHistoryController,
            ),
            if (isDiabetes) ...[
              const SizedBox(height: 16),
              _buildDiabetesTypeDropdown(),
              const SizedBox(height: 16),
              DatePicker(
                controller: diagnosisDateController,
                labelText: 'Tanggal Diagnosis',
                hintText: 'Masukkan tanggal diagnosis',
                obscureText: false,
              ),
            ],
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () => _submitProfile(context),
                child: const Text(
                  'Buat Profil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiabetesTypeDropdown() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Tipe diabetes',
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      value: diabetesTypeController.text.isNotEmpty
          ? diabetesTypeController.text
          : null,
      icon: const Icon(Icons.arrow_drop_down, color: Colors.blue),
      dropdownColor: Colors.white,
      items: diabetesTypes.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          diabetesTypeController.text = value ?? '';
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a diabetes type';
        }
        return null;
      },
    );
  }
}
