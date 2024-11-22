import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const routeName = '/login';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isShowPassword = false;
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
          decoration: InputDecoration(
            labelText: t.email,
            hintText: t.email,
          ),
        ),
        TextField(
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
          onPressed: () {},
          style: Theme.of(context).textButtonTheme.style,
          child: Text(t.login),
        ),
        _clickableText(text: t.forgotPassword, onPressed: () {}),
        Row(mainAxisSize: MainAxisSize.min, children: [Text(t.newUser), _clickableText(text: t.createAccount, onPressed: () {})]),
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
        )
        ,
        SizedBox(height: 20),
      ],
    );
  }
}

class _clickableText extends StatelessWidget {
  const _clickableText({super.key, required this.text, required this.onPressed});
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
