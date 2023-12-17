import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/providers/firebase_providers.dart';

final firebaseServiceProvider = Provider((ref) => FirebaseService(
    firebaseFirestore: ref.read(firestoreProvider),
    firebaseAuth: ref.read(authProvider)));

final userProviderProvider = Provider((ref) {
  return ref
      .read(firestoreProvider)
      .collection('users')
      .where('uid', isEqualTo: ref.read(authProvider).currentUser?.uid)
      .withConverter(
          fromFirestore: (snapshot, options) => UserModel.fromJson,
          toFirestore: (value, options) => {})
      .get();
});

class FirebaseService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  FirebaseAuth get auth => _auth;

  FirebaseService(
      {required FirebaseFirestore firebaseFirestore,
      required FirebaseAuth firebaseAuth})
      : _firestore = firebaseFirestore,
        _auth = firebaseAuth;

  Future<void> fetchUsers() async {
    final usersCollectionReference = _firestore.collection('users');

    final response = await usersCollectionReference
        .withConverter(
          fromFirestore: (snapshot, options) => UserModel.fromJson,
          toFirestore: (value, options) => {},
        )
        .get();

    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data()).toList();
    }
  }

  saveUserInfo(UserModel userModel, String uid) {
    _firestore.collection('users').doc(uid).set(userModel.toJson());
  }

  Future<QuerySnapshot<UserModel Function(Map<String, dynamic>)>?> getUserByUid(
      String uid) async {
    try {
      final Future<QuerySnapshot<UserModel Function(Map<String, dynamic>)>>
          querySnapshot = FirebaseFirestore.instance
              .collection('users')
              .withConverter(
                  fromFirestore: (snapshot, options) => UserModel.fromJson,
                  toFirestore: (value, options) => {})
              .where('uid', isEqualTo: uid)
              .get();

      // Eğer belirtilen UID'ye sahip bir kullanıcı bulunduysa,
      // İlk belgeyi alıp harita olarak döndürüyoruz.
      return querySnapshot;
    } catch (e) {
      // Hata durumunda burada ilgili hata işlenir.
      print('getUserByUid Error: $e');
      return null;
    }
  }

  Future<UserModel> getUserByUidFromFirebase(String uid) async {
    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance
              .collection('users')
              .where('uid', isEqualTo: uid)
              .get();

      if (querySnapshot.docs.isNotEmpty) {
        // If there is a user with the given uid
        Map<String, dynamic> userData = querySnapshot.docs.first.data();
        final responese = UserModel.fromJson(userData);
        return responese;
      }
      throw Exception('User has not found!');
    } catch (e) {
      // Handle any errors that occurred during the API call
      print("Error getting user by uid from Firebase: $e");
      throw Exception('User has not found!');
    }
  }
}
