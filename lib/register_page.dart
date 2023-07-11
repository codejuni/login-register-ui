import 'package:flutter/material.dart';
import 'package:login_register_ui/auth_form_field.dart';
import 'package:login_register_ui/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222222),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/register.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                const Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      const AuthFormField(hintText: 'name'),
                      const SizedBox(height: 25),
                      const AuthFormField(hintText: 'email'),
                      const SizedBox(height: 25),
                      const AuthFormField(hintText: 'password'),
                      const SizedBox(height: 25),
                      const AuthFormField(hintText: 'confirm password'),
                      const SizedBox(height: 40),
                      CustomButton(
                        text: 'Sign Up',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.transparent,
                    elevation: 0,
                    margin: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 15),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
