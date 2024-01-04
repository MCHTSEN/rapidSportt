import 'dart:developer';

import 'package:booking_calendar/booking_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/enums/firebase_collection.dart';
import 'package:myapp/product/models/sport_booking.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/providers/firebase_providers.dart';

final firebaseServiceProvider = Provider((ref) => FirebaseService(
    firebaseFirestore: ref.read(firestoreProvider),
    firebaseAuth: ref.read(authProvider)));

/// `FirebaseService` is a class that provides various methods for interacting with the Firebase
/// Firestore and Firebase Authentication services. It includes methods for fetching user data,
/// saving user information, saving user location, saving tutor ratings, updating user location,
/// retrieving sport bookings, and more. The class also manages a `isLoading` flag to track the
/// loading state of data operations.
class FirebaseService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  FirebaseAuth get auth => _auth;

  FirebaseService(
      {required FirebaseFirestore firebaseFirestore,
      required FirebaseAuth firebaseAuth})
      : _firestore = firebaseFirestore,
        _auth = firebaseAuth;

  List<SportBooking> tutorsBooking = [];

  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
  }

  /// The `fetchUsers()` function is retrieving a list of users from the Firestore database. It queries
  /// the "users" collection and retrieves the user data using the `get()` method. The retrieved user
  /// data is then stored in a list called `values`.
  Future<void> fetchUsers() async {
    _changeLoading();
    final usersCollectionReference = _firestore.collection('users');

    final response = await usersCollectionReference
        .withConverter(
          fromFirestore: (snapshot, options) => UserModel.fromJson,
          toFirestore: (value, options) => {},
        )
        .get();
    _changeLoading();
    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data()).toList();
    }
  }

  /// The `fetchUserRatings` function is retrieving a user's ratings from the Firestore database. It
  /// takes a `uid` parameter, which is the unique identifier of the user, and queries the "ratings"
  /// collection to find ratings associated with that user. The function then retrieves the ratings data
  /// and prints it using the `inspect` function.
  Future<void> fetchUserRatings(String uid) async {
    _changeLoading();
    final usersCollectionReference = _firestore.collection('ratings');

    final response =
        await usersCollectionReference.where('uid', isEqualTo: uid).get();
    _changeLoading();
    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data()).toList();
      inspect(values);
    }
  }

  /// The `saveUserInfo` function is used to save user information in the Firestore database. It takes
  /// three parameters: `userModel` (an instance of the `UserModel` class representing the user's data),
  /// `uid` (the unique identifier of the user), and `collectionPath` (the path to the collection where
  /// the user's information will be saved).
  saveUserInfo(UserModel userModel, String uid, String collectionPath) {
    _firestore.collection(collectionPath).doc(uid).set(userModel.toJson());
  }

  /// The `saveUserLocation` function is used to save the location of a user in the Firestore database.
  /// It takes three parameters: `geo` (a `GeoPoint` object representing the latitude and longitude),
  /// `uid` (the unique identifier of the user), and `collectionPath` (the path to the collection where
  /// the user's location will be saved).
  saveUserLocation(GeoPoint geo, String uid, String collectionPath) {
    _firestore.collection(collectionPath).doc(uid).set({'geo': geo});
  }

  /// The `saveTutorRating` function is used to save a tutor's rating in the Firestore database. It takes
  /// two parameters: `rate` (the rating value) and `uid` (the unique identifier of the tutor).
  Future<bool?> saveTutorRating(
      {required double rate, required String uid}) async {
    await _firestore
        .collection(FirebaseColletions.ratings.name)
        .doc(uid)
        .collection(FirebaseColletions.ratings.name)
        .add({'rate': rate})
        .then((value) => true)
        .catchError((error) => print("Failed to add booking: $error"));
    return null;
  }

  /// The `updateUserLocation` function is used to update the location of a user in the Firestore
  /// database. It takes three parameters: `lat` (latitude), `lng` (longitude), and `uid` (user ID). It
  /// updates the document with the specified `uid` in the "users" collection by setting the "lat" and
  /// "lng" fields to the provided latitude and longitude values, respectively. This function is useful
  /// when a user's location changes and needs to be updated in the database.
  updateUserLocation(String lat, String lng, String uid) {
    _firestore
        .collection(FirebaseColletions.users.name)
        .doc(uid)
        .update({'lat': lat, 'lng': lng});
  }

  /// The `getBookings` function is retrieving a list of sport bookings for a
  /// specific user from the Firestore database. It takes a `uid` parameter,
  /// which is the unique identifier of the user, and returns a
  /// `Future<List<SportBooking>>` containing the bookings.
  Future<List<SportBooking>> getBookings(String uid) async {
    _changeLoading();
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection(FirebaseColletions.bookings.name)
          .doc(uid)
          .collection('bookings')
          .withConverter(
            fromFirestore: (snapshot, options) =>
                SportBooking.fromJson(snapshot.data()!),
            toFirestore: (value, options) => {},
          )
          .get();
      _changeLoading();

      tutorsBooking = querySnapshot.docs.map((doc) => doc.data()).toList();
      inspect(tutorsBooking);

      return tutorsBooking;
    } catch (e) {
      throw Exception('getbookings error: $e');
    }
  }

  /// function that retrieves a user from the Firestore database based on their UID.
  /// The `getUserByUid` function is
  /// retrieving a user from the
  /// Firestore database based on their
  /// UID. It takes a `uid` parameter,
  /// which is the unique identifier of
  /// the user, and returns a
  /// `Future<QuerySnapshot<UserModel
  /// Function(Map<String, dynamic>)>>`
  /// containing the user data.
  Future<QuerySnapshot<UserModel Function(Map<String, dynamic>)>?> getUserByUid(
      String uid) async {
    _changeLoading();
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
      _changeLoading();

      return querySnapshot;
    } catch (e) {
      // Hata durumunda burada ilgili hata işlenir.
      print('getUserByUid Error: $e');
      return null;
    }
  }

  /// The `getRatingsData` function is retrieving ratings data for a specific user from the Firestore
  /// database. It takes a `uid` parameter, which is the unique identifier of the user, and queries the
  /// "ratings" collection to find ratings associated with that user. The function then retrieves the
  /// ratings data and prints it using the `inspect` function.
  getRatingsData(String uid) async {
    try {
      QuerySnapshot<
          Map<String,
              dynamic>> documentSnapshot = await FirebaseFirestore.instance
          .collection(
              'ratings') // Bu 'ratings' koleksiyon adını ihtiyacınıza göre değiştirin
          .doc(uid)
          .collection('ratings')
          .get();

      if (documentSnapshot.docs.isNotEmpty) {
        final values = documentSnapshot.docs.map((e) => e.data()).toList();
        for (var element in values) {}
        inspect(values);
      }
    } catch (e) {
      print('Hata oluştu: $e');
      return [];
    }
  }

  /// The `getAverageRating` function is retrieving the average rating for a specific user from the
  /// Firestore database. It takes a `uid` parameter, which is the unique identifier of the user.
  Future<double> getAverageRating(String uid) async {
    try {
      QuerySnapshot<Map<String, dynamic>> documentSnapshot =
          await FirebaseFirestore.instance
              .collection('ratings')
              .doc(uid)
              .collection('ratings')
              .get();

      if (documentSnapshot.docs.isNotEmpty) {
        final values = documentSnapshot.docs.map((e) => e.data()).toList();

        double totalRating = 0.0;
        int ratingCount = 0;

        for (var element in values) {
          if (element.containsKey('rate')) {
            // 'rating' anahtarına sahipse toplama ekle
            totalRating += element['rate'];
            ratingCount++;
          }
        }

        // Verilerin ortalamasını al
        double averageRating =
            ratingCount > 0 ? totalRating / ratingCount : 0.0;

        inspect(averageRating);
        return averageRating;
      }

      return 0.0; // Eğer veri yoksa 0.0 döndür
    } catch (e) {
      print('Hata oluştu: $e');
      return 0.0;
    }
  }

  Future<UserModel> getUserByUidFromFirebase(String uid) async {
    _changeLoading();
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
        _changeLoading();

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
