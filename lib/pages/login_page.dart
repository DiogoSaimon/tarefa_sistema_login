import 'package:flutter/material.dart';
import 'package:tarefa_sistema_login/pages/forgot_password.dart';
import 'package:tarefa_sistema_login/widgets/validators.dart';
import 'package:tarefa_sistema_login/widgets/visible_widget.dart';
import 'account_page.dart';
import 'create_account_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = "";

  FocusNode _emailfocusNode = FocusNode();
  FocusNode _passwordfocusNode = FocusNode();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    bool passwordVisible = false;


  void updateText(String newText) {
    setState(() {
      text = newText;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Login",
          style: TextStyle(
            fontFamily: "Questrial",
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150.0),
                TextFormField(
                  focusNode: _emailfocusNode,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateEmail(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                TextFormField(
                  focusNode: _passwordfocusNode,
                  controller: _passwordController,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validatePassword(value!),
                  enableSuggestions: false,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    suffixIcon: VisibleWidget(
                    visible: passwordVisible,
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                    labelText: "Senha",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();

                    if (!_formKey.currentState!.validate()) {
                      _formKey.currentState!.validate();
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountPage()));
                    }
                  },
                  child: Text("Entrar"),
                ),
                SizedBox(height: 20.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount()));
                    },
                    child: Text("Criar Conta"),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text("Esqueceu a Senha?"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
