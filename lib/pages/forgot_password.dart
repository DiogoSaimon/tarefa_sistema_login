import 'package:flutter/material.dart';
import 'package:tarefa_sistema_login/widgets/validators.dart';
import 'login_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String text = "";

  FocusNode _emailfocusNode = FocusNode();
  FocusNode _newPasswordfocusNode = FocusNode();
  FocusNode _confirmPasswordfocusNode = FocusNode();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void updateText(String newText) {
    setState(() {
      text = newText;
    });
  }

  @override
  void dispose() {
   _emailController.dispose(); 
   _newPasswordController.dispose();
   _confirmPasswordController.dispose();
   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Redefinir Senha")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateEmail(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  focusNode: _newPasswordfocusNode,
                  controller: _newPasswordController,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateNewPassword(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Nova Senha",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  focusNode: _confirmPasswordfocusNode,
                  controller: _confirmPasswordController,
                  textInputAction: TextInputAction.next,
                  onChanged: (newValue) => updateText(newValue),
                  validator: (newValue) => Validators().validateConfirmPassword(
                      _newPasswordController.text,
                      _confirmPasswordController.text),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Confirmar Senha",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (!_formKey.currentState!.validate()) {
                      _formKey.currentState!.validate();
                    } else {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }
                  },
                  child: Text("Salvar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
