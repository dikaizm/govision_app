import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/auth/widget/text_input.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Column(children: [
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
                labelText: 'Diabetes Type',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10)),
            value: diabetesTypeController.text.isNotEmpty ? diabetesTypeController.text : null,
            icon: const Icon(Icons.arrow_drop_down),
            items: diabetesTypes.map((String value) {
              return DropdownMenuItem(value: value, child: Text(value));
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
          )
        ]));
  }
}
