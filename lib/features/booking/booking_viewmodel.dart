import 'package:booking_calendar/booking_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:myapp/product/models/sport_booking.dart';
part 'booking_viewmodel.g.dart';

class BookingViewmodel = BookingViewmodelBase with _$BookingViewmodel;

abstract class BookingViewmodelBase with Store {
  CollectionReference bookings =
      FirebaseFirestore.instance.collection('bookings');

  ///This is how can you get the reference to your data from the collection, and serialize the data with the help of the Firestore [withConverter]. This function would be in your repository.
  Future<void> getBookingStream({required String placeId}) async {
    try {
      QuerySnapshot querySnapshot = await bookings
          .doc(placeId)
          .collection('bookings')
          .withConverter<SportBooking>(
            fromFirestore: (snapshots, _) =>
                SportBooking.fromJson(snapshots.data()!),
            toFirestore: (snapshots, _) => snapshots.toJson(),
          )
          .get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        print(doc.data()); // Belge verilerini yazdırabilirsiniz
      }
    } catch (e) {
      print("Hata: $e");
    }
  }

  List<DateTimeRange> convertStreamResultFirebase(
      {required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///Note that this is dynamic, so you need to know what properties are available on your result, in our case the [SportBooking] has bookingStart and bookingEnd property
    List<DateTimeRange> converted = [];
    for (var i = 0; i < streamResult.size; i++) {
      final item = streamResult.docs[i].data();
      converted.add(
          DateTimeRange(start: (item.bookingStart!), end: (item.bookingEnd!)));
    }
    return converted;
  }

  ///This is how you upload data to Firestore
  Future<dynamic> uploadBookingFirebase(
      {required BookingService newBooking,
      required String tutorId,
      required String userId}) async {
    await bookings
        .doc(tutorId)
        .collection('bookings')
        .add(newBooking.toJson())
        .then((value) => print("Booking Added"))
        .catchError((error) => print("Failed to add booking: $error"));

    await bookings
        .doc(userId)
        .collection('bookings')
        .add(newBooking.toJson())
        .then((value) => print("Booking Added"))
        .catchError((error) => print("Failed to add booking: $error"));
  }
}
