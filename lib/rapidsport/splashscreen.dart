import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/girisyap.dart';
import 'package:myapp/utils.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GirisYap()));
  }
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // splashscreenQK7 (214:1185)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 812*fem,
          decoration: const BoxDecoration (
            color: Color(0xff0d9a57),
          ),
          child: Center(
            child: Text(
              'RS',
              style: safeGoogleFont (
                'Bungee Shade',
                fontSize: 200*ffem,
                fontWeight: FontWeight.w400,
                height: 0.09*ffem/fem,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
          );
  }
}