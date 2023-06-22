import 'dart:developer' as dev;

import 'constant/authentication_enum.dart';

class AuthenticationService {
  Future<bool> loginWithMethod({
    required AuthenticationMethod method,
    required bool isAutoLogin,
  }) async {
    bool success = false;
    try {
      switch (method) {
        case AuthenticationMethod.google:
          success = await GoogleAuthenticationMethod().login();
          break;
        default:
          break;
      }
    } catch (e) {
      dev.log(e.toString());
      success = false;
    }
    return success;
  }
}
// Provider

class GoogleAuthenticationMethod implements AuthenticationRepository {
  @override
  Future<bool> login() async {
    return true;
  }
}

abstract class AuthenticationRepository {
  Future<bool> login();
}

// class Authentication extends AuthenticationRepository with GoogleAuth {
//   @override
//   Future<bool> login() async {
//     isAutoLoggin // may read value from super class
//     switch (method) {
//       case GoogleAuth:
//         googleLogin();
//         break;
//     }
//     return true;
//   }
// }

// mixin GoogleAuth {
//   void googleLogin() {}
// }
