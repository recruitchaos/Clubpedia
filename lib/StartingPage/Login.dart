import 'package:clubpedia/Buttons/ContainerButton.dart';
import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:clubpedia/TextField/CustomTextFormField.dart';
import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';
import 'package:loading_icon_button/loading_icon_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: headline4.copyWith(color: secondaryColor),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomTextFormField(
                      title: "Registration Number",
                      icon: Icons.person_outline,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomTextFormField(
                      title: "Passcode",
                      icon: Icons.lock_outline,
                      hidden: true,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: EasyContainer(
                      child: Text(
                        "Lets Jump In",
                        style: headline3.copyWith(color: primaryColor),
                      ),
                      onTap: () {},
                      borderRadius: 12,
                      color: tertiaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
