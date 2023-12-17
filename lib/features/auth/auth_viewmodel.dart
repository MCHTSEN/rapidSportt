import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/services/firebase_service.dart';

final authViewModelProvider = Provider(
    (ref) => AuthViewModel(firebaseService: ref.read(firebaseServiceProvider)));

class AuthViewModel {
  final FirebaseService _firebaseService;

  AuthViewModel({required FirebaseService firebaseService})
      : _firebaseService = firebaseService;
}
