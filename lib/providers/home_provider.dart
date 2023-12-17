// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:myapp/product/models/user_model.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  Future<void> fetchUsers(String uid) async {
    final usersCollectionReference =
        FirebaseFirestore.instance.collection('users');

    final response = await usersCollectionReference
        .where('uid', isEqualTo: uid)
        .withConverter<UserModel>(
          fromFirestore: (snapshot, options) =>
              UserModel.fromJson(snapshot.data() ?? {}),
          toFirestore: (value, options) => {},
        )
        .get();

    if (response.docs.isNotEmpty) {
      final values = response.docs.map((e) => e.data());
      state = state.copyWith(user: values.single);
    }
  }
}

class HomeState extends Equatable {
  final UserModel? user;

  const HomeState({this.user});

  @override
  // TODO: implement props
  List<Object?> get props => [user];

  HomeState copyWith({
    UserModel? user,
  }) {
    return HomeState(
      user: user ?? this.user,
    );
  }
}
