import 'package:firebase_core/firebase_core.dart';
import 'package:krypt/util/logging/app_logger.dart';

typedef AppFirebaseException = FirebaseException;

class KryptAppException implements Exception {
  final String errorMessage;

  KryptAppException(this.errorMessage);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KryptAppException && runtimeType == other.runtimeType && errorMessage == other.errorMessage;

  @override
  int get hashCode => errorMessage.hashCode;
}

class AppFirebaseAuthException implements Exception {
  final String errorCode;

  AppFirebaseAuthException(this.errorCode) {
    AppLogger.debug('error code is $errorCode');
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppFirebaseAuthException && runtimeType == other.runtimeType && errorCode == other.errorCode;

  @override
  int get hashCode => errorCode.hashCode;

  AppFirebaseAuthExceptionType get exceptionType {
    switch (errorCode) {
      case 'weak-password':
        return AppFirebaseAuthExceptionType.weakPassword;

      case 'invalid-email':
        return AppFirebaseAuthExceptionType.invalidEmail;

      case 'email-already-in-use':
        return AppFirebaseAuthExceptionType.emailAlreadyInUse;

      case 'user-not-found':
        return AppFirebaseAuthExceptionType.userNotFound;

      case 'user-disabled':
        return AppFirebaseAuthExceptionType.userDisabled;

      case 'wrong-password':
        return AppFirebaseAuthExceptionType.wrongPassword;

      case 'too-many-requests':
        return AppFirebaseAuthExceptionType.tooManyRequests;

      case 'operation-not-allowed':
        return AppFirebaseAuthExceptionType.failed;

      default:
        return AppFirebaseAuthExceptionType.unknownError;
    }
  }
}

enum AppFirebaseAuthExceptionType {
  canceled,
  failed,
  networkUnavailable,
  popupBlockedByBrowser,
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  tooManyRequests,
  weakPassword,
  unknownError,
  emailAlreadyInUse;

  String get message {
    switch (this) {
      case weakPassword:
        return "The password provided is too weak.";

      case emailAlreadyInUse:
        return "An account already exists for that email.";

      case wrongPassword:
      case invalidEmail:
        return "Password or email does not exist for this account";

      case networkUnavailable:
        return "Seems your offline, please check your internet connection and try again";

      case userDisabled:
        return "This account has been disabled";

      case canceled:
      case failed:
      case popupBlockedByBrowser:
      case tooManyRequests:
      case unknownError:
        return "Something went wrong, please try again later";

      case AppFirebaseAuthExceptionType.userNotFound:
        return "Account with that email or password does not exist";
    }
  }
}
