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

  saveUserInfo(UserModel userModel, String uid, String collectionPath) {
    _firestore.collection(collectionPath).doc(uid).set(userModel.toJson());
  }

  saveUserLocation(GeoPoint geo, String uid, String collectionPath) {
    _firestore.collection(collectionPath).doc(uid).set({'geo': geo});
  }

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

  updateUserLocation(String lat, String lng, String uid) {
    _firestore
        .collection(FirebaseColletions.users.name)
        .doc(uid)
        .update({'lat': lat, 'lng': lng});
  }

  // Future<List<SportBooking>>
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

  Future<double> getAverageRating(String uid) async {
    try {
      QuerySnapshot<
          Map<String,
              dynamic>> documentSnapshot = await FirebaseFirestore.instance
          .collection(
              'ratings') 
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
