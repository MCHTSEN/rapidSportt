import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/utils.dart';

class DersOnay extends StatelessWidget {
  const DersOnay({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // dersonay1gy (31:927)
        padding: EdgeInsets.fromLTRB(1*fem, 30*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // home1rhb (31:963)
              margin: EdgeInsets.fromLTRB(261.5*fem, 0*fem, 0*fem, 30*fem),
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
              // dersinizonaylanmitiroFT (31:930)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 39*fem),
              constraints: BoxConstraints (
                maxWidth: 298*fem,
              ),
              child: Text(
                'DERSİNİZ ONAYLANMIŞTIR.',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // correct2AVK (34:2552)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 27*fem),
              width: 123*fem,
              height: 123*fem,
              child: Image.asset(
                'assets/rapidsport/images/yesiltik.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // antrenmannzyarmsaatierisindeba (31:931)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29.5*fem, 0*fem),
              constraints: BoxConstraints (
                maxWidth: 277*fem,
              ),
              child: Text(
                'Antrenmanınız yarım saat içerisinde başlayacaktır. \n\nİyi antrenmanlar dileriz.',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
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