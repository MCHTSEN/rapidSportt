import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/auth/authentication_view.dart';
import 'package:myapp/features/auth/sign_up_view.dart';
import 'package:myapp/features/find_trainer/find_trainer_view.dart';
import 'package:myapp/features/home/home_view.dart';
import 'package:myapp/product/initialize/application_start.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
// import 'package:myapp/rapidsport/splashscreen.dart';
import 'package:myapp/utils.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ProviderScope(child: FindTrainerView()));
  }
}
