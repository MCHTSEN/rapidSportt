import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:myapp/product/models/user_model.dart';
part 'map_viewmodel.g.dart';

class MapViewmodel = MapViewmodelBase with _$MapViewmodel;

abstract class MapViewmodelBase with Store {
  @observable
  int selectedIndex = 0;
  @observable
  List<UserModel> tutors = [];
  @observable
  bool isLoading = false;
  
@action
  Future<List<UserModel>?> fetchTutors() async {
    _changeLoading();

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
    _changeLoading();

    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data()).toList();
      tutors = values;
      inspect(values);
      return values;
    }
    _changeLoading();

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
