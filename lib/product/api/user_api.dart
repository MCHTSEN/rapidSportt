import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/models/user_model.dart';

class UsersApi {
  UsersApi._();

  static final UsersApi _instance = UsersApi._();

  static UsersApi get instance => _instance;

  CollectionReference<Map<String, dynamic>> users() =>
      FirebaseFirestore.instance.collection('users');

  CollectionReference<Map<String, dynamic>> admins() =>
      FirebaseFirestore.instance.collection('adminsCollection');

  CollectionReference<Map<String, dynamic>> usernamepool() =>
      FirebaseFirestore.instance.collection('usernamesCollection');

  CollectionReference<Map<String, dynamic>> userAssets() =>
      FirebaseFirestore.instance.collection('userAssetsCollection');

  CollectionReference<Map<String, dynamic>> gameResults() =>
      FirebaseFirestore.instance.collection('gameResultsCollection');

  DocumentReference<Map<String, dynamic>> userDetails(String username) =>
      users().doc(username);

  Future<bool> deleteWhereIndexValueIsNull() async {
    final query =
        await gameResults().where('indexValue', isEqualTo: null).get();
    for (var doc in query.docs) {
      gameResults().doc(doc.id).delete();
    }
    return true;
  }

  Future<List<UserModel>?> getAllUsers() async {
    final query = await users().get();

    if (query.docs.isEmpty) {
      return null;
    }
    final docs = query.docs;

    final usrs = docs
        .where((element) => element.exists)
        .map((e) => e.data())
        .map((e) => UserModel.fromJson(e))
        .toList();

    return usrs;
  }

  Future<Map<String, dynamic>?> updateUserAssets(String uid) async {
    return null;
  }

  Future<List<String>> getAdminEmails() async {
    final query = await admins().get();

    if (query.docs.isEmpty) {
      return [];
    }
    final docs = query.docs;
    try {
      final emailsDoc = docs
          .where((element) => element.exists)
          .map((e) => e.data())
          .map((e) => e)
          .toList();
      final emails = emailsDoc.first;
      final usernamesPool =
          (emails['emails'] as List).map((mail) => mail as String).toList();
      return usernamesPool;
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> getUserNamePool() async {
    final query = await usernamepool().get();

    if (query.docs.isEmpty) {
      return [];
    }
    final docs = query.docs;
    try {
      final usernamesDoc = docs
          .where((element) => element.exists)
          .map((e) => e.data())
          .map((e) => e)
          .toList();
      final usernames = usernamesDoc.first;
      final usernamesPool = (usernames['usernames'] as List)
          .map((mail) => mail as String)
          .toList();
      return usernamesPool;
    } catch (e) {
      return [];
    }
  }

  Future<bool> setUserNamePool(List<String> usernames) async {
    try {
      final json = {
        "usernames": List<dynamic>.from(usernames.map((x) => x)),
      };
      await UsersApi.instance.usernamepool().doc('usernames').set(json);
      return true;
    } catch (e) {
      // logger.e('Unable to set usernames to pool: $e');
      return false;
    }
  }

  Future<UserModel?> _getUser(Query<Map<String, dynamic>> where) async {
    final query = await where.get();

    if (query.docs.isEmpty) {
      return null;
    }

    final doc = query.docs[0];
    final dt = doc.data();

    if (doc.exists) {
      final user = UserModel.fromJson(dt);
      return user;
    }

    return null;
  }

  Future<UserModel?> getUserFromUserId(String uid) async {
    final where = users().where(
      'uid',
      isEqualTo: uid,
    );

    return _getUser(where);
  }

  Future<UserModel?> getUserFromUserName(String userName) async {
    final where = users().where(
      'userName',
      isEqualTo: userName,
    );

    return _getUser(where);
  }

  Future<UserModel?> getUserFromEmailAddress(String email) async {
    final where = users().where(
      'email',
      isEqualTo: email,
    );

    return _getUser(where);
  }

  Future<UserModel?> getUserFromPhone(String phone) async {
    final where = users().where(
      'phoneNum',
      isEqualTo: phone,
    );

    return _getUser(where);
  }

  Future<bool> addUser(UserModel user, WidgetRef ref) async {
    try {
      await users().add(user.toJson());

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateUser(UserModel user, WidgetRef ref) async {
    try {
      await users().doc(user.name).update(user.toJson());

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteUser(UserModel user, WidgetRef ref) async {
    try {
      await users().doc(user.name).delete();

      return true;
    } catch (e) {
      return false;
    }
  }
}
