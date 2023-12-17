import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';

final currentUserProv = StateNotifierProvider<CurrentUserProvider, UserModel?>(
    (_) => CurrentUserProvider(null));

class CurrentUserProvider extends StateNotifier<UserModel?> {
  CurrentUserProvider(UserModel? state) : super(state);

  update(UserModel? user) {
    state = user;
  }

  logOut(WidgetRef ref) async {
    await FirebaseAuth.instance.signOut();
    state = null;
  }

  Future<void> deleteAccount(WidgetRef ref) async {
    final curUser = ref.watch(authProvider).currentUser;
    await ref
        .watch(firestoreProvider)
        .collection('users')
        .where('uid', isEqualTo: curUser!.uid)
        .get()
        .then((querySnapshot) {
      for (var perUser in querySnapshot.docs) {
        perUser.reference.delete();
      }

      curUser.delete();
    });
  }

  Future<bool> resetPassword() async {
    try {
      if (state?.email != null) {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: state!.email!);
      } else {
        return false;
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> resetPasswordWithoutLogin(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return true;
    } catch (e) {
      return false;
    }
  }
}
