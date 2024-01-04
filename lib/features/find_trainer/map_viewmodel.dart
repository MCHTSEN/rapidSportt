import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobx/mobx.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
part 'map_viewmodel.g.dart';

class MapViewmodel = MapViewmodelBase with _$MapViewmodel;

abstract class MapViewmodelBase with Store {
  @observable
  int selectedIndex = 0;
  @observable
  List<UserModel> tutors = [UserModel(lat: '40.95047279', lng: '29.10645082')];
  @observable
  bool isLoading = false;
  @observable
  List<double> averageRatings = [3.81, 3.8];

  @computed
  bool get isRatingsEmpty => averageRatings.isEmpty;

  @action
  Future<List<double>> getRatingList(WidgetRef ref) async {
    final List<double> temp = [];
    for (UserModel sportBooking in tutors) {
      final result = await ref
          .watch(firebaseServiceProvider)
          .getAverageRating(sportBooking.uid ?? '');

      temp.add(result);
    }
    averageRatings = temp;
    inspect(averageRatings);
    return averageRatings;
  }

  @action
  Future<List<UserModel>?> fetchTutors() async {
    final usersCollectionReference =
        FirebaseFirestore.instance.collection('users');

    final response = await usersCollectionReference
        .where('type', isEqualTo: 'Eğitmen')
        .withConverter<UserModel>(
          fromFirestore: (snapshot, options) =>
              UserModel.fromJson(snapshot.data() ?? {}),
          toFirestore: (value, options) => {},
        )
        .get();

    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data()).toList();
      tutors = values;
      inspect(values);
      return values;
    }

    throw Exception('Egitmen data null');
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  void changeIndex(int index) {
    selectedIndex = index;
  }
}
