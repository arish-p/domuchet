import 'package:app_domuchet_executor/api/navigator_service.dart';
import 'package:app_domuchet_executor/pages/request_page.dart';
import 'package:app_domuchet_executor/styles/style_library.dart';
import 'package:app_domuchet_executor/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  static const routeName = "auth_page";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Padding(
                padding: StyleLibrary.padding.mainAllPadding,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(),
                      Text("Авторизация исполнителя", style: StyleLibrary.fonts.header,),
                      const CircleLogo(padding: EdgeInsets.symmetric(vertical: 40),),
                      Padding(padding: StyleLibrary.padding.mainTopPadding),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: StyleLibrary.field.mainInputField.copyWith(
                          hintText: "Электронная почта или телефон",
                        ),
                      ),
                      Padding(padding: StyleLibrary.padding.mainTopPadding),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: StyleLibrary.field.mainInputField.copyWith(
                          hintText: "Введите пароль",
                        ),
                      ),
                      Padding(padding: StyleLibrary.padding.mainTopPadding),
                      Row(
                        children: [
                          Expanded(
                              child: CustomButton(
                                onTap: () => NavigatorService.push(routeName: RequestPage.routeName),
                                text: 'Войти',)
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Material(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: StyleLibrary.padding.mainHorizontalPadding,
                child: Text("Онлайн-сервис для ведения учета в управляющих организациях",
                  style: StyleLibrary.fonts.small,
                  textAlign: TextAlign.center,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CircleLogo extends StatelessWidget {
  const CircleLogo({Key? key, required this.padding}) : super(key: key);

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
            )
          ],
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset('assets/png/logo.png'),
        ),
      ),
    );
  }
}

