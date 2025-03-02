import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_assignment/utils/constatnts.dart';
import 'package:ui_assignment/views/app_main_screen.dart';
import 'package:ui_assignment/widgets/custom_buttton.dart';
import 'package:ui_assignment/widgets/google_button.dart';
import 'package:ui_assignment/widgets/my_divider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _validate = false;
  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

  @override
  void dispose() {
    _obsecurePassword.dispose();
    _email.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 4,
            ),
            Text(
              "Adhicine",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: primaryColor),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Signin(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.at,
                        color: Color(0xFF46D0C3),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                            errorText:
                                _validate ? 'Please Enter Email Address' : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.lock,
                        size: 30,
                        color: Color(0xFF46D0C3),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _password,
                          obscureText: _obsecurePassword.value,
                          decoration: InputDecoration(
                            errorText:
                                _validate ? 'Please Enter Password' : null,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obsecurePassword.value =
                                        !_obsecurePassword.value;
                                  });
                                },
                                icon: _obsecurePassword.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xFF46D0C3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomButton(
                      press: () {
                        setState(() {
                          _email.text.isEmpty && _password.text.isEmpty
                              ? _validate = true
                              : _validate = false;
                          if (_validate) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AppMainscreen()));
                          }
                        });
                      },
                      title: 'Sign In',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: MyDivider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GoogleButton(
                      press: () {},
                      title: 'Continue with Google',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "New to Adhicine? ",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xFF46D0C3),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Align Signin() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Sign In",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.grey.shade800),
      ),
    );
  }
}
