import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:clubpedia/Pages/Components/EventsList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimSearchBar(width: 300, textController: textController, onSuffixTap: () {
                          setState(() {
                            textController.clear;
                          });

                        }, onSubmitted: (String ) {  },
                        helpText: "I am looking for...",
                        ),
                        Icon(Icons.person_outline)
                      ],
                    ),
                    Text("Upcoming Events", style: headline4.copyWith(fontWeight: FontWeight.w700, color: tertiaryColor), textAlign: TextAlign.start,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          EventsList(image: Image.asset('assets/Event1.png'), title: "Genesis",),
                          SizedBox(width: 12,),
                          EventsList(image: Image.asset('assets/Event2.png'), title: "VoiceOver",),
                          SizedBox(width: 12,),
                          EventsList(image: Image.asset('assets/Event1.png'), title: "Genesis",)
                        ],
                      ),
                    ),
                    SizedBox(height: 18,),
                    Text("Based on Your Interest", style: headline4.copyWith(fontWeight: FontWeight.w700, color: tertiaryColor),textAlign: TextAlign.start,),
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          EventsList(image: Image.asset('assets/Event3.png'), title: "Cinema Fest",),
                          SizedBox(width: 12,),
                          EventsList(image: Image.asset('assets/Event4.png'), title: "VoiceOver",),
                          SizedBox(width: 12,),
                          EventsList(image: Image.asset('assets/Event1.png'), title: "Genesis",)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
