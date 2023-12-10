import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/features/home/home_view.dart';
import 'package:myapp/utils.dart';
import '../../rapidsport/anasayfa.dart';
import 'authentication_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationView extends ConsumerStatefulWidget {
  const AuthenticationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AuthenticationViewState();
}

class _AuthenticationViewState extends ConsumerState<AuthenticationView> {
  @override
  void initState() {
    checkUserLoggedIn(FirebaseAuth.instance.currentUser);
    super.initState();
  }

  void checkUserLoggedIn(User? user) {
    ref.read(authProvider.notifier).fetchUserDetails(user);
  }

  final authProvider =
      StateNotifierProvider<AuthenticationNotifier, AuthenticationState>((ref) {
    return AuthenticationNotifier();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _empty(),
            _Header(context),
            _empty(),
            _AuthView(),
          ],
        ),
      ),
    );
  }

  SizedBox _empty() {
    return const SizedBox(
      height: 50,
    );
  }

  Padding _AuthView() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: FirebaseUIActions(
        actions: [
          AuthStateChangeAction<SignedIn>((context, state) {
            if (state.user != null) {
              checkUserLoggedIn(state.user);
              context.route.navigateToPage(const HomeView());
            }
          }),
        ],
        child: Column(
          children: [
            LoginView(
              action: AuthAction.signIn,
              providers: FirebaseUIAuth.providersFor(FirebaseAuth.instance.app),
            ),
            // if (ref.read(authProvider).isRedirect)
            //   const Text('Basariyla giris yapildi.'),
          ],
        ),
      ),
    );
  }

  Text _Header(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Text(
      'RS',
      style: safeGoogleFont(
        'Bungee Shade',
        fontSize: 100 * ffem,
        fontWeight: FontWeight.w400,
        height: 0.09 * ffem / fem,
        color: Colors.lightGreen,
      ),
    );
  }
}
