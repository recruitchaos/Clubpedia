import 'package:clubpedia/Constants/AppColors.dart';
import 'package:clubpedia/Constants/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ClubList extends StatefulWidget {
  final Image image;
  final String title;
  const ClubList({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  State<ClubList> createState() => _ClubListState();
}

class _ClubListState extends State<ClubList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(1.0),
          borderRadius: BorderRadius.circular(12)
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              widget.image,
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: headline4.copyWith(color: tertiaryColor),),
                  Row(
                    children: [
                      Icon(Icons.info, color: secondaryColor,),
                      Text("Info", style: headline3.copyWith(color: secondaryColor), textAlign: TextAlign.start,),
                      LikeButton(
                        size: 20,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
