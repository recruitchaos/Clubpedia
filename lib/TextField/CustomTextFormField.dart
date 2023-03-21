import 'package:clubpedia/Constants/AppColors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  final IconData? icon;
  final bool? hidden;
  const CustomTextFormField(
      {Key? key, required this.title, this.icon, this.controller, this.hidden})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool errors = false;

  @override
  Widget build(BuildContext context) {
    InputDecoration textFieldDecoration = InputDecoration(
      labelText: widget.title,
      fillColor: primaryColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.64),
            width: 0),
        borderRadius: BorderRadius.circular(16),
      ),
      // disabledBorder: const OutlineInputBorder(
      //   borderSide: BorderSide(color: Colors.white, width: 1),
      // ),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
    );

    return TextFormField(
      controller: widget.controller,
      obscureText: widget.hidden ?? false,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Theme.of(context).colorScheme.onPrimary,
      style: Theme.of(context).textTheme.headline5!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 16,
          ),
      validator: (value) {
        if (value!.isEmpty) {
          setState(() {
            errors = true;
          });
          return "Cannot leave this empty";
        } else if (widget.hidden == true && value.length < 6) {
          setState(() {
            errors = true;
          });
          return "Password cannot be less than 6 characters";
        }
        // else if (!emailValidatorRegExp.hasMatch(value)) {
        //   return "Please enter a valid ${widget.title}";
        // }
        setState(() {
          errors = false;
        });
        return null;
      },
      decoration: widget.icon != null
          ? textFieldDecoration.copyWith(
              suffixIcon: errors == false
                  ? Icon(
                      widget.icon,
                    )
                  : Icon(
                      widget.icon,
                      color: Colors.red[400],
                    ),
            )
          : textFieldDecoration,
    );
  }
}
