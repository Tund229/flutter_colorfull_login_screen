import 'package:flutter/material.dart';
import 'package:colorfull_login_screen/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
              color1,
              color2,
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
              ElevatedButtonWidget(width: width, height: height,textStyle: textStyle1,),
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

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.width,
    required this.height, required this.textStyle,
  }) : super(key: key);

  final double width;
  final double height;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width * 0.85,
          height * 0.065,
        ),
        primary: color5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width * 0.5),
        ),
      ),
      onPressed: () {},
      child:  Text(
        'Sign In',
        style: textStyle,
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
            vertical: height * 0.025,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.5),
            borderSide: const BorderSide(
              width: 2,
              color: color5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.5),
            borderSide: const BorderSide(
              width: 3,
              color: color5,
            ),
          ),
          labelText: labelText,
          labelStyle: textStyle3,
        ),
      ),
    );
  }
}
