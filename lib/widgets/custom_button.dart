import 'package:flutter/material.dart';

import '../styles/style_library.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.onTap, required this.text}) : super(key: key);

 final String text;
 final Function onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: () => onTap(),
        child: Ink(
          decoration: BoxDecoration(
            gradient: StyleLibrary.color.gradient,
            borderRadius: const BorderRadius.all(Radius.circular(StyleLibrary.mainRadius)),
          ),
          child: Container(
            constraints: const BoxConstraints(minWidth: 100.0, minHeight: 50.0), // min sizes for Material buttons,
            alignment: Alignment.center,
            child: Text(text, style: StyleLibrary.fonts.button.copyWith(
              color: Colors.white,
            ),),
          ),
        ),
    );
  }
}
