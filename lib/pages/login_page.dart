import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:poc_frontend/api/lib/api.dart';
import 'package:poc_frontend/main.dart';
import 'package:poc_frontend/pages/sign_up_page.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/login';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isShowPassword = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        SvgPicture.asset(
          'assets/images/logo.svg',
          width: 100,
          height: 100,
        ),
        SizedBox(height: 20),
        Text(t.login, style: Theme.of(context).textTheme.headlineLarge),
        Text(t.enterYourEmailToLoginForThisApp),
        SizedBox(height: 20),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: t.email,
            hintText: t.email,
          ),
        ),
        TextField(
          controller: _passwordController,
          obscureText: !_isShowPassword,
          decoration: InputDecoration(
            labelText: t.password,
            hintText: t.password,
            suffixIcon: IconButton(
              icon: Icon(_isShowPassword ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isShowPassword = !_isShowPassword;
                });
              },
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            RpcLoginApi().rpcLoginPost(_emailController.text, _passwordController.text).then((sessionToken) {
              log(sessionToken, name: 'sessionToken');
              MyApp.prefs!.setString('loginSessionToken', sessionToken);

              ApiKeyAuth apiClientAuth = ApiKeyAuth('header', 'session-token');
              apiClientAuth.apiKey = sessionToken;

              MyApp.sessionApiClient = ApiClient(authentication: apiClientAuth);

              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/');
            });
          },
          style: Theme.of(context).textButtonTheme.style,
          child: Text(t.login),
        ),
        _ClickableText(text: t.forgotPassword, onPressed: () {}),
        Row(mainAxisSize: MainAxisSize.min, children: [Text(t.newUser), _ClickableText(text: t.createAccount, onPressed: () => Navigator.pushReplacementNamed(context, SignUpPage.routeName))]),
        Spacer(),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: t.byContinuingYouAgreeToOur),
              WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(
                text: t.termsOfService,
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(text: t.and),
              WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(
                text: t.privacyPolicy,
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}


class _ClickableText extends StatelessWidget {
  const _ClickableText({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.transparent)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(decoration: TextDecoration.underline, color: Theme.of(context).colorScheme.surfaceBright, decorationColor: Theme.of(context).colorScheme.surfaceBright),
      ),
    );
  }
}
