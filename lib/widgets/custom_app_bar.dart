import 'package:app_domuchet_executor/styles/style_library.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppBar({Key? key, required this.left, required this.center, required this.right}) : super(key: key);

  final Widget left;
  final Widget center;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: StyleLibrary.color.gradient
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top,
          left: StyleLibrary.padding.width,
          right: StyleLibrary.padding.width
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            left,
            center,
            right,
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0,50);
}

