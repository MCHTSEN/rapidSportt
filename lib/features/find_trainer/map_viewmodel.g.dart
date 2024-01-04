// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapViewmodel on MapViewmodelBase, Store {
  Computed<bool>? _$isRatingsEmptyComputed;

  @override
  bool get isRatingsEmpty =>
      (_$isRatingsEmptyComputed ??= Computed<bool>(() => super.isRatingsEmpty,
              name: 'MapViewmodelBase.isRatingsEmpty'))
          .value;

  late final _$selectedIndexAtom =
      Atom(name: 'MapViewmodelBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$tutorsAtom =
      Atom(name: 'MapViewmodelBase.tutors', context: context);

  @override
  List<UserModel> get tutors {
    _$tutorsAtom.reportRead();
    return super.tutors;
  }

  @override
  set tutors(List<UserModel> value) {
    _$tutorsAtom.reportWrite(value, super.tutors, () {
      super.tutors = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'MapViewmodelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$averageRatingsAtom =
      Atom(name: 'MapViewmodelBase.averageRatings', context: context);

  @override
  List<double> get averageRatings {
    _$averageRatingsAtom.reportRead();
    return super.averageRatings;
  }

  @override
  set averageRatings(List<double> value) {
    _$averageRatingsAtom.reportWrite(value, super.averageRatings, () {
      super.averageRatings = value;
    });
  }

  late final _$getRatingListAsyncAction =
      AsyncAction('MapViewmodelBase.getRatingList', context: context);

  @override
  Future<List<double>> getRatingList(WidgetRef ref) {
    return _$getRatingListAsyncAction.run(() => super.getRatingList(ref));
  }

  late final _$fetchTutorsAsyncAction =
      AsyncAction('MapViewmodelBase.fetchTutors', context: context);

  @override
  Future<List<UserModel>?> fetchTutors() {
    return _$fetchTutorsAsyncAction.run(() => super.fetchTutors());
  }

  late final _$MapViewmodelBaseActionController =
      ActionController(name: 'MapViewmodelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$MapViewmodelBaseActionController.startAction(
        name: 'MapViewmodelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$MapViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIndex(int index) {
    final _$actionInfo = _$MapViewmodelBaseActionController.startAction(
        name: 'MapViewmodelBase.changeIndex');
    try {
      return super.changeIndex(index);
    } finally {
      _$MapViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
tutors: ${tutors},
isLoading: ${isLoading},
averageRatings: ${averageRatings},
isRatingsEmpty: ${isRatingsEmpty}
    ''';
  }
}
