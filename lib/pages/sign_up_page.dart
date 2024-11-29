import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/src/response.dart';
import 'package:poc_frontend/api/lib/api.dart';
import 'package:poc_frontend/main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const routeName = '/signUp';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isShowPassword = false;

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _errorText;

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
        Text(t.signUp, style: Theme.of(context).textTheme.headlineLarge),
        Text(t.enterYourEmailToSignUpForThisApp),
        SizedBox(height: 20),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: t.email,
            hintText: t.email,
          ),
        ),
        TextField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: t.name,
            hintText: t.name,
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
        //confirm password
        TextField(
          obscureText: !_isShowPassword,
          controller: _confirmPasswordController,
          decoration: InputDecoration(
            labelText: t.confirmPassword,
            hintText: t.confirmPassword,
            errorText: _passwordController.text != _confirmPasswordController.text ? t.passwordsDoNotMatch : null,
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

        Text(
          _errorText ?? '',
          style: TextStyle(color: Colors.red),
        ),
        TextButton(
          onPressed: () async {
            try {
              Object res = await RpcSignUpApi().rpcSignUpPost({
                'email': _emailController.text,
                'name': _nameController.text,
                'password': _passwordController.text,
              });
              String sessionToken = res as String;
              log(sessionToken, name: 'session_token');
              MyApp.prefs!.setString('loginSessionToken', sessionToken);
              MyApp.prefs!.setString('email', _emailController.text);
              if (defaultApiClient.authentication is ApiKeyAuth) {
                (defaultApiClient.authentication as ApiKeyAuth).apiKey = sessionToken;
              }
            } on Response catch (response, _) {
              if (response.statusCode == 409) {
                final body = jsonDecode(response.body);
                if (body['code'] == '23505') {
                  setState(() {
                    _errorText = t.emailAlreadyInUse;
                  });
                }
              };
            }
          },
          style: Theme.of(context).textButtonTheme.style,
          child: Text(t.signUp),
        ),
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
