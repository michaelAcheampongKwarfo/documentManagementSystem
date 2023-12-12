import 'package:dmc_prototype/widgets/app_button.dart';
import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:dmc_prototype/widgets/app_textfeild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _usernameContoller;
  late TextEditingController _passwordContoller;

  @override
  void initState() {
    super.initState();
    _usernameContoller = TextEditingController();
    _passwordContoller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _usernameContoller.dispose();
    _passwordContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'lib/images/slcb1.png',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          Material(
            elevation: 0.0,
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(screenSize.width * 0.01),
              decoration: BoxDecoration(
                color: AppColors.black45Color,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  AppTextField(
                      controller: _usernameContoller,
                      hintText: 'Enter Username'),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  AppTextField(
                      controller: _passwordContoller,
                      hintText: 'Enter Password'),
                  SizedBox(
                    height: screenSize.height * 0.01,
                  ),
                  AppButton(onTap: () {}, text: 'Sing In'),
                  TextButton(
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(text: 'Not a member?'),
                          AppText(text: 'Sign Up here')
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
