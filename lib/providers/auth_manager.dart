import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/api/user_api.dart';
import 'package:myapp/product/enums/auth_error.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/providers/current_user_prov.dart';

abstract class FireAuth {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static UserCredential? userCredential;
  static login(
      {required WidgetRef ref,
      required BuildContext context,
      required UserModel user}) async {
    try {
     
    } catch (e) {
      catchAuthException(context, e);
    }
  }

  static register(
      {required UserModel user,
      required BuildContext context,
      required WidgetRef ref}) async {
    AuthError? regErr = await isExistChecker(user, context);
    if (regErr != null) {
     
      return regErr;
    }
    try {
     
       
      ;
      await userCredential!.user!.sendEmailVerification();
    } catch (e) {
      if (kDebugMode) {
        // logger.e('Create user with email and password in register error: $e');
      }
      if (e is AuthError) {
        return e;
      }
      return AuthError.failed;
    }
    try {
     
    } catch (e) {
      if (kDebugMode) {
        // logger.e('Sign in with email and password after register error: $e');
      }
      if (e is AuthError) {
        return e;
      }
      return AuthError.failed;
    }

    final err = await completeReg(userCredential, user, ref);
    if (err != null) {
      // logger.e(err.name);
      return err;
    }
    String email = user.email!.trim();
    final userfromfbstore =
        await UsersApi.instance.getUserFromEmailAddress(email);
    ref.read(currentUserProv.notifier).update(userfromfbstore);
    return null;
  }

  static String parsePhoneNum(String phoneNum) {
    if (phoneNum.startsWith('0')) {
      phoneNum = phoneNum.substring(1);
    }

    return '+90$phoneNum';
  }


  static AuthError? handleFirebaseAuthException(FirebaseAuthException e) {
    AuthError? err;
    switch (e.code) {
      case 'email-already-in-use':
        err = AuthError.emailAlreadyInUse;
        break;

      case 'invalid-email':
        err = AuthError.invalidEmail;
        break;

      case 'operation-not-allowed':
        err = AuthError.operationNotAllowed;
        break;

      case 'weak-password':
        err = AuthError.weakPassword;
        break;

      case 'account-exists-with-different-credential':
        err = AuthError.accountExistsWithDifferentCredential;
        break;

      case 'invalid-credential':
        err = AuthError.invalidCredential;
        break;

      case 'user-disabled':
        err = AuthError.userDisabled;
        break;

      case 'user-not-found':
        err = AuthError.userNotFound;
        break;

      case 'wrong-password':
        err = AuthError.wrongPassword;
        break;

      case 'invalid-verification-code':
        err = AuthError.invalidVerificationCode;
        break;

      case 'invalid-verification-id':
        err = AuthError.invalidVerificationId;
        break;
    }

    return err;
  }

  static void catchAuthException(BuildContext context, e) {
    AuthError? err;

    if (e is FirebaseAuthException) {
      err = handleFirebaseAuthException(e);
    } else if (e is AuthError) {
      err = e;
    }

   
  }

  static Future<bool> userNameExists(String uname) async {
    try {
      final u = await UsersApi.instance.getUserFromUserName(uname);
      return u != null;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> emailExists(String email) async {
    try {
      final u = await UsersApi.instance.getUserFromEmailAddress(email.trim());
      return u != null;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> phoneExists(String phone) async {
    try {
      final u = await UsersApi.instance.getUserFromPhone(phone);
      return u != null;
    } catch (e) {
      return false;
    }
  }

  static Future<AuthError?> completeFbReg(
      WidgetRef ref, UserModel user) async {
    try {
      final reg = await UsersApi.instance.addUser(user, ref);

      if (!reg) {
      
        return AuthError.failed;
      }
    } catch (e) {
     
      return AuthError.failed;
    }

    return null;
  }

  static Future<AuthError?> completeReg(
      UserCredential? userCredential, UserModel user, WidgetRef ref) async {
    final credsUser = userCredential?.user;

    if (credsUser == null) {
      return AuthError.failed;
    }

    try {
      await credsUser.updateDisplayName(user.name);
      user.uid = credsUser.uid;
      final err = await completeFbReg(ref, user);
      return err;
    } catch (e) {
     
      return AuthError.failed;
    }
  }

  static Future<AuthError?> isExistChecker(
      UserModel user, BuildContext context) async {
    /*if ((user.phoneNum != null && await phoneExists(user.phoneNum!))) {
      handleAuthError(context, AuthError.phoneAlreadyInUse);
      return AuthError.phoneAlreadyInUse;
    }*/
    if ((user.email != null && await emailExists(user.email!.trim()))) {
      
      return AuthError.emailAlreadyInUse;
    }
    if (await userNameExists(user.name??'')) {

      return AuthError.userNameAlreadyInUse;
    }
    return null;
  }
}
