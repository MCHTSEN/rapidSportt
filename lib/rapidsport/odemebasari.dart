import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/utils.dart';

class OdemeBasari extends StatelessWidget {
  const OdemeBasari({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // odemebasarizyT (34:2512)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // home13Rw (35:1238)
              margin: EdgeInsets.fromLTRB(255*fem, 0*fem, 0*fem, 61*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/rapidsport/images/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // demenizbaariylaalinmitirsvm (34:2516)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 52*fem),
              constraints: BoxConstraints (
                maxWidth: 277*fem,
              ),
              child: Text(
                'ÖDEMENİZ \nBAŞARIYLA \nALINMIŞTIR',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              // correct1muf (34:2547)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 42*fem),
              width: 123*fem,
              height: 123*fem,
              child: Image.asset(
                'assets/rapidsport/images/yesiltik.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // paketinizikullanmayabalayabili (34:2553)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
              constraints: BoxConstraints (
                maxWidth: 238*fem,
              ),
              child: Text(
                'Paketinizi \nkullanmaya \nbaşlayabilirsiniz',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 32*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}