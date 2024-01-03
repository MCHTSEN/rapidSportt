// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/firebase_options.dart';
import 'package:myapp/main.dart';
import 'package:myapp/product/enums/firebase_collection.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';

void main() {
  setUp(() async {});
  test('naber', () async {
    String bookingEndString = "2023-12-31T09:00:00.000";

    // String tarih/saat bilgisini DateTime nesnesine çevirme
    DateTime bookingEnd = DateTime.parse(bookingEndString);
    print("bookingEnd: $bookingEnd");
  });
}
