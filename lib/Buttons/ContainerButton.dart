import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final Function onClick;
  final String title;
  final Color? color;
  const ContainerButton({Key? key, required this.onClick, required this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onClick();
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: (color == null) ? MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.primary) : MaterialStateProperty.all<Color>(color!),
        overlayColor: MaterialStateColor.resolveWith((states) =>
            Theme.of(context).colorScheme.secondary.withOpacity(0.2)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      ),
    );
  }
}
