import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/login_page.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';
import 'package:test_langue_ui/widgets/checkbox_role.dart';
import 'package:test_langue_ui/widgets/text_input_fields.dart';
import 'package:test_langue_ui/widgets/two_aligned_checkboxes.dart';

class SignUp extends StatelessWidget {
  final form = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController repeatpasswordController =
      TextEditingController();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Form(
                  key: form,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      const CenteredText(
                        text: 'User',
                        color: AppColors.bluebutton,
                        fontsize: 30.0,
                        fontweight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const CenteredText(
                        text: 'Sign Up',
                        color: AppColors.bluebutton,
                        fontsize: 30.0,
                        fontweight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const CenteredText(
                        text: 'Welcome to Testlangue',
                        color: AppColors.black,
                        fontsize: 15.0,
                        fontweight: FontWeight.normal,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextInputCustom(
                        hinttext: 'Email',
                        icon: Icons.email,
                        coloricon: AppColors.bluebutton,
                        controller: emailController, obscureText: false,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextInputCustom(
                        hinttext: 'Name',
                        icon: Icons.person,
                        coloricon: AppColors.bluebutton,
                        controller: nameController, obscureText: false,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextInputCustom(
                        hinttext: 'Password',
                        icon: Icons.password,
                        coloricon: AppColors.bluebutton,
                        controller: passwordController, obscureText: true,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextInputCustom(
                        
                        hinttext: 'ConfirmPassword',
                        icon: Icons.password,
                        coloricon: AppColors.bluebutton,
                        controller: repeatpasswordController, obscureText: true,
                        
                      ),
                      
                      const SizedBox(
                        height: 15.0,
                      ),
                      const CheckboxRoleAligned(),
                      const SizedBox(
                        height: 2.0,
                      ),
                      const Center(
                        child: CheckboxRole(
                          sidetext: 'As Institution',
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: 680,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.blueofgradient3,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        margin:
                            const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blueofgradient3,
                          ),
                          onPressed: () {
                            if (form.currentState!.validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                  fullscreenDialog: false,
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: AppColors.whiteofgradeint,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
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