import 'package:app_domuchet_executor/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        left: Icon(Icons.menu),
        center: Text("Заявки"),
        right: Icon(Icons.filter_list_outlined)
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0,50);
}
