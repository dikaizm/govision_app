import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:govision/feature/auth/model/register.dart';
import 'package:govision/feature/auth/model/token.dart';
import 'package:govision/feature/auth/model/user.dart';
import 'package:govision/feature/auth/repository/token_repository.dart';
import 'package:govision/feature/auth/repository/user_repository.dart';
import 'package:govision/feature/auth/state/auth_state.dart';
import 'package:govision/feature/auth/state/user_state.dart';
import 'package:govision/feature/auth/widget/text_input.dart';
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
    List<String> genderOptions = ['Laki-laki', 'Perempuan'];

    return Scaffold(
      backgroundColor: AppColors.green,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),

                const SizedBox(height: 16),

                // logo
                const Text(
                  'GoVision',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
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
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // text
                      const Text(
                        'Daftarkan diri Anda',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),

                      const SizedBox(height: 16),

                      // form
                      TextInput(
                        controller: nameController,
                        labelText: 'Nama',
                        hintText: 'Masukan nama',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      // form
                      TextInput(
                        controller: emailController,
                        labelText: 'Email',
                        hintText: 'Masukan email',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: passwordController,
                        labelText: 'Kata sandi',
                        hintText: 'Masukan kata sandi',
                        obscureText: true,
                      ),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: confirmPasswordController,
                        labelText: 'Ulangi kata sandi',
                        hintText: 'Masukan kembali kata sandi',
                        obscureText: true,
                      ),

                      const SizedBox(height: 16),

                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),

                      Text(
                        'Isi Data Diri Anda',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: phoneController,
                        labelText: 'Nomor telepon',
                        hintText: 'Masukan nomor telepon',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      // form
                      DatePicker(
                        controller: birthDateController,
                        labelText: 'Tanggal Lahir',
                        hintText: 'Masukan tanggal lahir',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      // form
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Jenis Kelamin',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                )),
                            RadioGender(
                                genderOptions: genderOptions,
                                controller: genderController),
                          ]),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: cityController,
                        labelText: 'Kota/Kabupaten',
                        hintText: 'Masukan kota/kabupaten',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: provinceController,
                        labelText: 'Provinsi',
                        hintText: 'Masukan provinsi',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      TextInput(
                        controller: addressController,
                        labelText: 'Alamat',
                        hintText: 'Masukan alamat',
                        obscureText: false,
                      ),

                      const SizedBox(height: 16),

                      const Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),

                      const SizedBox(height: 16),

                      const Text(
                        'Pilih Peran Anda',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),

                      const SizedBox(height: 16),

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
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: _isRole1Selected
                                      ? AppColors.green
                                      : AppColors.green10,
                                  borderRadius: BorderRadius.circular(24),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.medical_services,
                                      color: _isRole1Selected
                                          ? Colors.white
                                          : Colors.black54,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Dokter',
                                      style: TextStyle(
                                        color: _isRole1Selected
                                            ? Colors.white
                                            : Colors.black54,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 16),

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
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: _isRole2Selected
                                      ? AppColors.green
                                      : AppColors.green10,
                                  borderRadius: BorderRadius.circular(24),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: _isRole2Selected
                                          ? Colors.white
                                          : Colors.black54,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Pasien',
                                      style: TextStyle(
                                        color: _isRole2Selected
                                            ? Colors.white
                                            : Colors.black54,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
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
                      SizedBox(
                        width: double.infinity,
                        height: 48,
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
                              showTopSnackBar(context, 'Email tidak valid',
                                  Colors.red[700]);
                              return;
                            }

                            if (!Validator.isValidPhoneNumber(
                                phoneController.text)) {
                              showTopSnackBar(context,
                                  'Nomor telepon tidak valid', Colors.red[700]);
                              return;
                            }

                            if (!Validator.isValidPassword(
                                passwordController.text)) {
                              showTopSnackBar(
                                  context,
                                  'Minimal 8 karakter, setidaknya satu huruf kecil dan satu angka',
                                  Colors.red[700]);
                              return;
                            }

                            if (!Validator.isMatchPassword(
                                passwordController.text,
                                confirmPasswordController.text)) {
                              showTopSnackBar(context, 'Kata sandi tidak cocok',
                                  Colors.red[700]);
                              return;
                            }

                            if (nameController.text.isEmpty ||
                                emailController.text.isEmpty ||
                                passwordController.text.isEmpty ||
                                confirmPasswordController.text.isEmpty ||
                                phoneController.text.isEmpty ||
                                birthDateController.text.isEmpty ||
                                genderController.text.isEmpty ||
                                cityController.text.isEmpty ||
                                provinceController.text.isEmpty ||
                                addressController.text.isEmpty) {
                              showTopSnackBar(context,
                                  'Semua kolom harus diisi', Colors.red[700]);
                              return;
                            }

                            try {
                              final Register registerData = Register(
                                name: nameController.text,
                                email: email,
                                password: passwordController.text,
                                confirmPassword: confirmPasswordController.text,
                                phone: phoneController.text,
                                birthDate: birthDateController.text,
                                gender: genderController.text == 'Laki-laki'
                                    ? 'male'
                                    : 'female',
                                city: cityController.text,
                                province: provinceController.text,
                                addressDetail: addressController.text,
                                role: _isRole1Selected ? 'doctor' : 'patient',
                              );

                              final registerResponse = await ref
                                  .read(apiProvider)
                                  .post(
                                      '/auth/register', registerData.toJson());

                              registerResponse.when(success: (response) async {
                                final String accessToken =
                                    response["access_token"] as String;

                                final tokenRepository =
                                    ref.read(tokenRepositoryProvider);
                                final token = Token(token: accessToken);
                                await tokenRepository.saveToken(token);

                                final _user = User.fromJson(
                                    response as Map<String, dynamic>);
                                AuthState.loggedIn(_user);

                                final userRepository =
                                    ref.read(userRepositoryProvider);
                                await userRepository.saveUser(_user);

                                UserState.loggedIn(_user);

                                if (_user.role == Role.patient.value) {
                                  showTopSnackBar(
                                      context,
                                      "Selamat datang ${response["name"]}, silahkan lengkapi profil pasien Anda",
                                      AppColors.green);

                                  ref
                                      .read(routerProvider)
                                      .go(CreatePatientProfileRoute.path);
                                } else if (_user.role == Role.doctor.value) {
                                  ref
                                      .read(routerProvider)
                                      .go(MainDoctorRoute.path);
                                }
                              }, error: (error) {
                                return showTopSnackBar(
                                    context, error.toString(), Colors.red[700]);
                              });
                            } catch (e) {
                              // Handle general exceptions
                              showTopSnackBar(
                                  context, e.toString(), Colors.red[700]);
                            }
                          },
                          child: const Text(
                            'Lanjut',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

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
                                fontWeight: FontWeight.w600,
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
  final TextEditingController controller;

  const RadioGender({
    super.key,
    required this.genderOptions,
    required this.controller,
  });

  @override
  State<RadioGender> createState() => _RadioGenderState();
}

class _RadioGenderState extends State<RadioGender> {
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender =
        widget.controller.text.isNotEmpty ? widget.controller.text : null;
  }

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
                    widget.controller.text = value ?? '';
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
  final String labelText;
  final String hintText;
  final bool obscureText;

  const DatePicker(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.hintText,
      required this.obscureText});

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());
    if (picked != null) {
      controller.text = picked.toString().split(' ')[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none, // Removes default border
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
            suffixIcon: const Icon(Icons.calendar_today),
          ),
          readOnly: true,
          onTap: () => selectDate(context),
        ));
  }
}
