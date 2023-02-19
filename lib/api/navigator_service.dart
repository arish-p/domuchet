import 'package:flutter/material.dart';

class NavigatorService{
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  static void push({required String routeName, Object? arguments}){
    print('push $routeName');
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void pushAndRemoveUntil({required String routeName}){
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false);
  }

  static void replace({required String routeName}){
    Navigator.pushReplacementNamed(context, routeName);
  }

  static void pop(){
    Navigator.pop(context);
  }

  static void popUntilContext({required BuildContext context, required String routeName}){
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

}