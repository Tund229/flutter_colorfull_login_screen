import 'package:flutter/material.dart';
import 'package:colorfull_login_screen/screens/first_screen.dart';
import 'package:colorfull_login_screen/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color3,
              color4,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'pic.png',
                width: width * 0.25,
              ),
              SizedBox(height: height * 0.03),
              const TextFieldWidget(labelText: 'Email'),
              SizedBox(height: height * 0.02),
              const TextFieldWidget(labelText: 'Password'),
              SizedBox(height: height * 0.05),
              ElevatedButtonWidget(
                width: width,
                height: height,
                textStyle: textStyle2,
              ),
              SizedBox(height: height * 0.01),
              const Text(
                'Cannot access your account?',
                style: textStyle4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
