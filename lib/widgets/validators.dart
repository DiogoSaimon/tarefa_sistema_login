class Validators {
  String? validateName(String name) {
    if (name.isEmpty) {
      print("Preencha o campo Nome!");
      return "Preencha o campo Nome!";
    } else {
      print("OK");
      return null;
    }
  }

  String? validateBornDate(String value) {
    if(value.isEmpty) {
      print("Vazio! Digite a Data no formato dd/mm/aaaa");
      return "Vazio! Digite a Data no formato dd/mm/aaaa";
    } else if(value.length != 10) {
        print("Digite a Data no formato dd/mm/aaaa");
        return "Digite a Data no formato dd/mm/aaaa";
    } else {
        print("OK");
        return null;
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      print("Preencha o campo E-mail!");
      return "Preencha o campo E-mail!";
    } else if (!value.contains("@")) {
      print("Preencha com um E-mail válido!");
      return "Preencha com um E-mail válido!";
    } else {
      print("OK");
      return null;
    }
  }

  String? validatePhone(String value){
    if(value.isEmpty){
      print("Vazio! Digite o Telefone no formato (00) 00000-0000");
      return "Vazio! Digite o Telefone no formato (00) 00000-0000";
    } else if(value.length != 15){
      print("Digite o Telefone no formato (00) 00000-0000");
      return "Digite o Telefone no formato (00) 00000-0000";
    } else {
      print("OK");
      return null;
    }
  }
  
  String? validateAddress(String value){
    if (value.isEmpty) {
      print("Vazio! Preencha o campo Endereço!");
      return "Vazio! Preencha o campo Endereço!";
    } else if(value.length < 6){
      print("Campo Endereço incompleto!");
      return "Campo Endereço incompleto!";
    } else {
      print("OK");
      return null;
    }
  }

  String? validateNumber(String value){
    if(value.isEmpty){
      print("Preencha o campo Número!");
      return "Preencha o campo Número!";
    } else {
      print("OK");
      return null;
    }
  }

  String? validateDistrict(String value){
    if(value.isEmpty){
      print("Vazio! Preencha o campo Bairro");
      return "Vazio! Preencha o campo Bairro";
    } else{
      print("OK");
      return null;
    }
  }

  String? validateCity(String value){
    if(value.isEmpty){
      print("Vazio! Preencha o campo Cidade");
      return "Vazio! Preencha o campo Cidade";
    } else{
      print("OK");
      return null;
    }
  }

  String? validateState(String value){
    if(value.isEmpty){
      print("Vazio! Preencha o campo Estado");
      return "Vazio! Preencha o campo Estado";
    } else if(value.length != 2){
      print("Incompleto! Preencha o campo Estado");
      return "Incompleto! Preencha o campo Estado";
    }else{
      print("OK");
      return null;
    }
  }

  String? validateCEP(String value){
    if(value.isEmpty){
      print("Vazio! Preencha o campo CEP");
      return "Vazio! Preencha o campo CEP";
    } else if(value.length != 9){
      print("Incompleto! Preencha o campo CEP");
      return "Incompleto! Preencha o campo CEP";
    } else{
      print("OK");
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      print("Preencha o campo da Senha!");
      return "Preencha o campo da Senha!";
    } else{
      print("OK");
      return null;
    }
  }

  String? validateNewPassword(String value) {
    if (value.isEmpty) {
      print("Preencha o campo da Nova Senha!");
      return "Preencha o campo da Nova Senha!";
    } else{
      print("OK");
      return null;
    }
  }

  String? validateConfirmPassword(String password, String newPassword) {
    if (password.isEmpty) {
      print("Preencha o campo Nova Senha!");
      return "Preencha o campo Nova Senha!";
    }
    else if (newPassword.isEmpty) {
      print("Preencha o campo Confirmnação de  Senha!");
      return "Preencha o campo Confirmnação de  Senha!";
    }
    else if (newPassword != password) {
      print("A Senha está diferente, digite novamente!");
      return "A Senha está diferente, digite novamente!";
    }
    else{
      print("OK");
      return null;
    }
  }
}
