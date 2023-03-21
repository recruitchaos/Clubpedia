import 'package:flutter/material.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:clubpedia/Constants/AppColors.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(

                        child: Image.asset('assets/eventposter.png'),
                        width: double.maxFinite,
                      ),
                      Positioned.fill(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text("Club Name", style: headline4.copyWith(color: primaryColor),),
                        ),
                      ))


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(width: 12,),
                        Text("12 March 2023", style: headline3,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12),
                    child: Row(
                      children: [
                        Icon(Icons.location_on_sharp),
                        SizedBox(width: 12,),
                        Text("Sharda Pai Amphitheatre", style: headline3,)
                      ],
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
