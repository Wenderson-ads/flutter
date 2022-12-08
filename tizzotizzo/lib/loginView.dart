import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tizzotizzo/cadastroView.dart';
import 'shared/custom_export.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Scream'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CadastroView(),
                    ));
              },
              icon: const Icon(Icons.workspace_premium))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomInput(
            tittle: 'login',
            controller: _loginController,
          ),
          CustomInput(
            tittle: 'senha',
            controller: _passwordController,
            isPassWord: true,
          ),
          ActionButton(
            title: 'Login',
            buttonAction: loginFunction,
          ),
        ],
      )),
    );
  }

  loginFunction() {
    if (_loginController.text == 'admin' &&
        _passwordController.text == 'admim') {
      Fluttertoast.showToast(
          msg: 'Login Sucess', backgroundColor: Colors.green);
    } else if (!(_loginController.text == 'Admin' &&
        _passwordController.text == 'admim')) {
      Fluttertoast.showToast(msg: 'Login Error');
    }
  }
}
