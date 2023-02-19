import 'package:app_domuchet_executor/api/navigator_service.dart';
import 'package:app_domuchet_executor/pages/auth_page.dart';
import 'package:app_domuchet_executor/pages/init_page.dart';
import 'package:app_domuchet_executor/pages/request_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      builder: (context, child){
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      title: 'Domuchet - исполнитель',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      onGenerateRoute: (RouteSettings setting){

        var routes = <String, WidgetBuilder>{
          InitPage.routeName : (context) => const InitPage(),
          AuthPage.routeName : (context) => const AuthPage(),
          RequestPage.routeName : (context) => const RequestPage(),

        };

        WidgetBuilder builder = routes[setting.name]!;
        return MaterialPageRoute(builder: (context) => builder(context));

      },

      initialRoute: InitPage.routeName,
    );
  }
}