import 'package:flutter/material.dart';
import 'package:login_register_ui/auth_form_field.dart';
import 'package:login_register_ui/custom_button.dart';
import 'package:login_register_ui/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222222),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/login.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                const Expanded(
                  flex: 4,
                  child: Center(
                    child: Text(
                      'Welcome Back',
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
                  flex: 6,
                  child: Column(
                    children: [
                      const AuthFormField(hintText: 'email'),
                      const SizedBox(height: 35),
                      const AuthFormField(hintText: 'password'),
                      const SizedBox(height: 50),
                      CustomButton(
                        text: 'Sign In',
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                          ),
                          const SizedBox(width: 30),
                          Image.asset(
                            'assets/facebook.png',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
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
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const RegisterPage();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 20,
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
