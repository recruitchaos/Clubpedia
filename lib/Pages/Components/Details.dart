import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(
        child: ElevatedButton(
          child: const Text("close"),
            onPressed: () {
            Navigator.pop(context);
            },
        ),
      ),
    );
  }
}
