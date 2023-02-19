import 'package:app_domuchet_executor/widgets/custom_app_bar.dart';
import 'package:app_domuchet_executor/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';


class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  static const routeName = 'request_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
    );
  }
}
