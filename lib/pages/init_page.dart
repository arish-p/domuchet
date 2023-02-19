import 'package:app_domuchet_executor/pages/auth_page.dart';
import 'package:flutter/material.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key? key}) : super(key: key);

  static const routeName = "init_page";

  @override
  Widget build(BuildContext context) {
    return AuthPage();
  }
}
