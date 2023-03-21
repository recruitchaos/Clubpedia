import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:clubpedia/Pages/HomePage.dart';
import 'package:clubpedia/StartingPage/Login.dart';
import 'package:flutter/material.dart';
import 'package:clubpedia/Pages/Events.dart';

import '../Pages/Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoOnBoarding1();
  }

  _navigatetoOnBoarding1() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.push(
        context, MaterialPageRoute(builder: (context) =>Home()));
  }

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
                  Text("Clubpedia", style: headline1.copyWith(color: tertiaryColor),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
