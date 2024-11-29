import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/src/response.dart';
import 'package:poc_frontend/api/lib/api.dart';

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

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    Response res;
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
          onPressed: () async {
            log("sign up");
            log(_emailController.text, name: 'email');
            log(_nameController.text, name: 'name');
            log(_passwordController.text, name: 'password');
            res = await RpcSignUpApi().rpcSignUpPostWithHttpInfo(
              RpcSignUpPostRequest(
                email: _emailController.text,
                name: _nameController.text,
                password: _passwordController.text,
              ),
            );

            log(res.body);
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
