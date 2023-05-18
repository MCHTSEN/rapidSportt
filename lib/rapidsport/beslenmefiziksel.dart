import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/beslenmeboykilo.dart';
import 'package:myapp/rapidsport/beslenmevegan.dart';
import 'package:myapp/utils.dart';

class BeslenmeFiziksel extends StatelessWidget {
  const BeslenmeFiziksel({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmefizikselNVs (53:1451)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // vuesaxlineararrowleftor5 (53:1462)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 321*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeBoyKilo())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: Image.asset(
                    'assets/rapidsport/images/geriok.png',
                    width: 36*fem,
                    height: 36*fem,
                  ),
                ),
              ),
            ),
            Container(
              // fizikselaktivitedurumunnaslyPB (53:1452)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 23*fem),
              constraints: BoxConstraints (
                maxWidth: 201*fem,
              ),
              child: Text(
                'Fiziksel aktivite durumun nasıl?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.4*ffem/fem,
                  letterSpacing: -1.5*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame37vSq (53:1506)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 3*fem, 22*fem),
              width: double.infinity,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Sedanter (masa başı, hareketsiz)',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame38foj (53:1522)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 20*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Hafif aktif (öğrenci,)',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame375cZ (53:1525)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 20*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Orta aktif(doktor,  tempolu iş hayatı)',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37TND (53:1528)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 120*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Ağır aktif(Ağırlık kaldırma, inşaat işçisi)',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37Qwf (53:1454)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeVegan())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 58*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Devam',
                      style: safeGoogleFont (
                        'Aksara Bali Galang',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}