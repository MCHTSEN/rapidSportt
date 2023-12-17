import 'package:go_router/go_router.dart';
import 'package:myapp/features/auth/authentication_view.dart';
import 'package:myapp/features/home/home_view.dart';

final router = GoRouter(
  initialLocation: '/signIn',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) => const AuthenticationView(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
