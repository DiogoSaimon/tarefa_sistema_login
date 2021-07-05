import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:tarefa_sistema_login/widgets/validators.dart';
import 'account_page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String text = "";

  FocusNode _nameFocusNode = FocusNode();
  FocusNode _bornDateFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _phoneFocusNode = FocusNode();
  FocusNode _addressFocusNode = FocusNode();
  FocusNode _addressNumberFocusNode = FocusNode();
  FocusNode _addressComplementFocusNode = FocusNode();
  FocusNode _districtFocusNode = FocusNode();
  FocusNode _cityFocusNode = FocusNode();
  FocusNode _stateFocusNode = FocusNode();
  FocusNode _cepFocusNode = FocusNode();
  FocusNode _newPasswordFocusNode = FocusNode();
  FocusNode _confirmPasswordFocusNode = FocusNode();

  TextEditingController _nameController = TextEditingController();
  MaskedTextController _bornDateController =
      MaskedTextController(mask: "00/00/0000");
  TextEditingController _emailController = TextEditingController();
  MaskedTextController _phoneController =
      MaskedTextController(mask: "(00) 00000-0000");
  TextEditingController _addressController = TextEditingController();
  MaskedTextController _addressNumberController =
      MaskedTextController(mask: "00000");
  TextEditingController _addressComplementController = TextEditingController();
  TextEditingController _districtController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  MaskedTextController _stateController = MaskedTextController(mask: "AA");
  MaskedTextController _cepController = MaskedTextController(mask: "00000-000");
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
    _nameController.dispose();
    _bornDateController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _addressNumberController.dispose();
    _addressComplementController.dispose();
    _districtController.dispose();
    _cityController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criar Conta")),
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
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _nameFocusNode,
                  controller: _nameController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) => updateText(value),
                  validator: (name) => Validators().validateName(name!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _bornDateFocusNode,
                  controller: _bornDateController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateBornDate(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Data de Nascimento",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _emailFocusNode,
                  controller: _emailController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateEmail(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _phoneFocusNode,
                  controller: _phoneController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validatePhone(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Telefone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _addressFocusNode,
                  controller: _addressController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateAddress(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Endereço",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _addressNumberFocusNode,
                  controller: _addressNumberController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateNumber(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Número",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _addressComplementFocusNode,
                  controller: _addressComplementController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (value) => updateText(value),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Complemento",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _districtFocusNode,
                  controller: _districtController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateDistrict(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Bairro",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _cityFocusNode,
                  controller: _cityController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateCity(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Cidade",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _stateFocusNode,
                  controller: _stateController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  textCapitalization: TextCapitalization.characters,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateState(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Estado",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _cepFocusNode,
                  controller: _cepController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => updateText(value),
                  validator: (value) => Validators().validateCEP(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "CEP",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _newPasswordFocusNode,
                  controller: _newPasswordController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => updateText(value),
                  validator: (value) =>
                      Validators().validateNewPassword(value!),
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  focusNode: _confirmPasswordFocusNode,
                  controller: _confirmPasswordController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onChanged: (newValue) => updateText(newValue),
                  validator: (newValue) => Validators().validateConfirmPassword(
                    _newPasswordController.text,
                    _confirmPasswordController.text,
                  ),
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountPage()));
                    }
                  },
                  child: Text("Cadastrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
