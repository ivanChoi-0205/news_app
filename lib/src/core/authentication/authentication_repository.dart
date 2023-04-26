// abstract class AuthenticationService {
abstract class AuthenticationRepository {
  const AuthenticationRepository();

  // User? get user;
  bool get isAutoLogin;
  bool get isLogging;

  // User case/action
  Future<bool> login();
  Future<void> loginOut();
  Future<bool> tryAutoLogin();

  Future<dynamic> registration();

  Future<dynamic> forgetPassword();
  Future<dynamic> resetPassword();
  Future<dynamic> updatePassword();

  Future<dynamic> queryAuthenticationMethod();
  Future<dynamic> biometricAuthentication(); // call when logined
}
// 短信驗證/圖片驗證 or 不需驗證
// geo ip block checking

// Authentication Method
// class FacebookAuthentication implements AuthenticationRepository {}

// class AppleAuthentication implements AuthenticationRepository {}

// class WeChatAuthentication implements AuthenticationRepository {}

// class GoogleAuthentication implements AuthenticationRepository {}

// class GeneralAuthentication implements AuthenticationRepository {}

// enum AuthenticationMethod{
//   general,
//   apple,
//   facebook,
//   google,
//   weChat,
// }

