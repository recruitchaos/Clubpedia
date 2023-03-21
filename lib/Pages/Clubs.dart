import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:clubpedia/Pages/Components/ClubList.dart';
import 'package:flutter/material.dart';

import 'Components/Details.dart';

class Clubs extends StatefulWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  State<Clubs> createState() => _ClubsState();
}

class _ClubsState extends State<Clubs> {
  void showDetails() {
    Details();
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
                children: [
                  Text(
                    "Chapters",
                    style: headline2.copyWith(color: secondaryColor),
                  ),
                  ClubList(
                    image: Image.asset('assets/ieee.png'),
                    title: "IEEE",
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(
                      image: Image.asset('assets/aperture.png'),
                      title: "Aperture"),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(image: Image.asset('assets/acm.png'), title: "ACM"),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(
                      image: Image.asset('assets/choreographia.png'),
                      title: "Coreographia"),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(
                      image: Image.asset('assets/tmc.png'),
                      title: "The Music Club"),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(
                      image: Image.asset('assets/litmus.png'), title: "Litmus"),
                  SizedBox(
                    height: 12,
                  ),
                  ClubList(
                      image: Image.asset('assets/querka.png'), title: "Qureka"),
                  SizedBox(height: 12,),
                  ClubList(image: Image.asset('assets/cinefilia.png'), title: "Cinefilia")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
