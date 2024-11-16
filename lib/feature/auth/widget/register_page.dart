import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/auth/model/register.dart';
import 'package:govision/feature/auth/model/token.dart';
import 'package:govision/feature/auth/repository/token_repository.dart';
import 'package:govision/feature/auth/state/auth_state.dart';
import 'package:govision/feature/auth/widget/box_logo.dart';
import 'package:govision/feature/auth/widget/logo.dart';
import 'package:govision/feature/auth/widget/sign_in_page.dart';
import 'package:govision/feature/auth/widget/sponsor.dart';
import 'package:govision/feature/auth/widget/text_input.dart';
import 'package:govision/feature/home/widget/home_page.dart';
import 'package:govision/shared/constants/app_theme.dart';
import 'package:govision/shared/constants/role.dart';
import 'package:govision/shared/http/api_provider.dart';
import 'package:govision/shared/route/app_router.dart';
import 'package:govision/shared/util/snackbar.dart';
import 'package:govision/shared/util/validator.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  bool _isRole1Selected = false;
  bool _isRole2Selected = false;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final phoneController = TextEditingController();
  final birthDateController = TextEditingController();
  final genderController = TextEditingController();

  final cityController = TextEditingController();
  final provinceController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> genderOptions = ['laki-laki', 'perempuan'];

    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),

                const SizedBox(height: 15),

                // logo
                const Text(
                  'GoVision',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                // Remaining height container
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      // text
                      const Text(
                        'Daftarkan diri Anda',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),

                      const SizedBox(height: 15),

                      // form
                      TextInput(
                        controller: nameController,
                        labelText: 'Nama',
                        hintText: 'Masukan nama',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      // form
                      TextInput(
                        controller: emailController,
                        labelText: 'Email',
                        hintText: 'Masukan email',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: passwordController,
                        labelText: 'Kata sandi',
                        hintText: 'Masukan kata sandi',
                        obscureText: true,
                      ),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: confirmPasswordController,
                        labelText: 'Ulangi kata sandi',
                        hintText: 'Masukan kembali kata sandi',
                        obscureText: true,
                      ),

                      const SizedBox(height: 15),

                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),

                      const Center(
                        // Center the text
                        child: Text(
                          'Isi Data Diri Anda',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: phoneController,
                        labelText: 'Nomor telepon',
                        hintText: 'Masukan nomor telepon',
                        obscureText: true,
                      ),

                      const SizedBox(height: 15),

                      // form
                      DatePicker(
                        controller: birthDateController,
                        labeltext: 'Tanggal Lahir',
                        hintText: 'Masukan tanggal lahir',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      // form
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Jenis Kelamin',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            )),
                      ),
                      RadioGender(genderOptions: genderOptions),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: cityController,
                        labelText: 'Kota/Kabupaten',
                        hintText: 'Masukan kota/kabupaten',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: provinceController,
                        labelText: 'Provinsi',
                        hintText: 'Masukan provinsi',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      TextInput(
                        controller: addressController,
                        labelText: 'Alamat',
                        hintText: 'Masukan alamat',
                        obscureText: false,
                      ),

                      const SizedBox(height: 15),

                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        'Pilih Peran Anda',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),

                      const SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Role Doctor Button
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isRole1Selected = true;
                                  _isRole2Selected = false;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: _isRole1Selected
                                      ? Colors.blue
                                      : Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: _isRole1Selected
                                      ? [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(0, 5),
                                          ),
                                        ]
                                      : [],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Dokter',
                                      style: TextStyle(
                                        color: _isRole1Selected
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // Role Patient Button
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isRole2Selected = true;
                                  _isRole1Selected = false;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: _isRole2Selected
                                      ? AppColors.green
                                      : Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: _isRole2Selected
                                      ? [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(0, 5),
                                          ),
                                        ]
                                      : [],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pasien',
                                      style: TextStyle(
                                        color: _isRole2Selected
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 32),

                      // button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0, // Disable elevation
                              backgroundColor: AppColors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () async {
                              final String email = emailController.text;
                              if (!Validator.isValidEmail(email)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Email tidak valid'),
                                  ),
                                );
                                return;
                              }

                              final Register registerData = Register(
                                name: nameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                confirmPassword: confirmPasswordController.text,
                                phone: phoneController.text,
                                birthDate: birthDateController.text,
                                gender: genderController.text,
                                city: cityController.text,
                                province: provinceController.text,
                                address: addressController.text,
                                role: _isRole1Selected ? 'doctor' : 'patient',
                                roleId: _isRole1Selected ? 1 : 2,
                              );

                              final params = registerData.toJson();

                              try {
                                final registerResponse = await ref
                                    .read(apiProvider)
                                    .post('/auth/register', params);

                                registerResponse.when(success: (success) async {
                                  final String accessToken =
                                      success["access_token"] as String;

                                  final tokenRepository =
                                      ref.read(tokenRepositoryProvider);
                                  final token = Token(token: accessToken);

                                  await tokenRepository.saveToken(token);

                                  final userRole =
                                      stringToRole(success["role"] as String);

                                  AuthState.loggedIn(role: userRole);

                                  showTopSnackBar(
                                      context,
                                      "Selamat datang ${success["name"]}",
                                      AppColors.green);

                                  if (userRole == Role.patient) {
                                    ref
                                        .read(routerProvider)
                                        .go(MainPatientRoute.path);
                                  } else if (userRole == Role.doctor) {
                                    ref
                                        .read(routerProvider)
                                        .go(MainDoctorRoute.path);
                                  }
                                }, error: (error) {
                                  return showTopSnackBar(context,
                                      error.toString(), Colors.red[700]);
                                });
                              } catch (e) {
                                // Handle general exceptions
                                showTopSnackBar(
                                    context, e.toString(), Colors.red[700]);
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Lanjut',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      // register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sudah punya akun?',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              context.push(SignInRoute.path);
                            },
                            child: const Text(
                              'Masuk',
                              style: TextStyle(
                                color: AppColors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RadioGender extends StatefulWidget {
  final List<String> genderOptions; // List of gender options

  const RadioGender({
    super.key,
    required this.genderOptions,
  });

  @override
  State<RadioGender> createState() => _RadioGenderState();
}

class _RadioGenderState extends State<RadioGender> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.genderOptions.map((gender) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
          child: Row(
            children: [
              Radio<String>(
                value: gender,
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
                activeColor: Colors.blue,
              ),
              Text(gender,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class DatePicker extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  final String hintText;
  final bool obscureText;

  const DatePicker(
      {super.key,
      required this.controller,
      required this.labeltext,
      required this.hintText,
      required this.obscureText});

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (picked != null) {
      controller.text = picked.toString().split(' ')[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600, width: 2)),
          labelText: labeltext,
          labelStyle: TextStyle(color: Colors.grey.shade600),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade600),
          suffixIcon: const Icon(Icons.calendar_today),
        ),
        readOnly: true,
        onTap: () => selectDate(context),
      ),
    );
  }
}
