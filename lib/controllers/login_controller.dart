import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  /*LoginControllerBase() {
    autorun((_) {
      //print('Email: $email');
      //print('Password: $password');
      //print('Validador do Email: $isEmailValid');
      //print('Qantidade de caracter senha: $isPasswordValid');
      print(isFormValid);
    });
  }*/

  @observable
  String email = '';

  /*
  @observable
  bool emailValid = false;
  @action
  void setEmail(String v) {
    email = v;
    emailValid = EmailValidator.validate(email);
  }*/
  @action
  void setEmail(String v) => email = v;

  @observable
  String password = '';
  @action
  void setPassword(String v) => password = v;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisible() => passwordVisible = !passwordVisible;

  @computed
  bool get isEmailValid => EmailValidator.validate(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed //juntando os computer
  bool get isFormValid => isEmailValid && isPasswordValid && !loading;

//desabilitar email/senha
  @observable
  bool loading = false;

  @observable
  bool loggedIn = false;

  @action
  Future<void> login() async {
    loading = true;

    await Future.delayed(const Duration(seconds: 1));

    loading = false;
    loggedIn = true;
  }
}
