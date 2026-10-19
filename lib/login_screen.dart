import 'package:facebook_app/colors/colors_facebook.dart';
import 'package:facebook_app/home_screen.dart';
import 'package:facebook_app/image_widget.dart';
import 'package:facebook_app/text_form_filed.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              ImageWidget(
                imageText: 'App Rounded Logo.png',
                height: 86.94,
                width: 87.54,
                top: 74,
                left: 0,
              ),

              const SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormFiled(
                  textValidator: 'Please enter your email',
                  textController: _emailController,
                  hintText: 'email',
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormFiled(
                  hintText: 'password',
                  textValidator: 'Please enter your password',
                  textController: _passwordController,
                  obscureText: _isPasswordHidden,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 353,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(
                          context,
                          HomeScreen.routeName,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: ColorsFacebook.blueColor),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ),

              InkWell(
                child: Text(
                  'Forgotten Password ?',
                  style: TextStyle(
                    color: ColorsFacebook.greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 170),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 353,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    child: const Text('Create Account'),
                  ),
                ),
              ),
              ImageWidget(
                imageText: 'Meta Logo.png',
                width: 98,
                height: 40,
                top: 0,
                left: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
