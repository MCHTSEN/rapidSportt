import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/rezervasyonolusturma.dart';
import 'package:myapp/rapidsport/rezervasyononayiki.dart';
import 'package:myapp/utils.dart';

class RezervasyonOnay extends StatelessWidget {
  const RezervasyonOnay({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // rezervasyononayoky (32:1603)
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
              // vuesaxlineararrowleftoeV (32:1623)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 312*fem, 60*fem),
              child: TextButton(
                onPressed: () {},
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
              // bretpattonANZ (32:1797)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 9*fem),
              child: Text(
                'Bret Patton',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667*ffem/fem,
                  letterSpacing: -1.8*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // ileLRT (32:1790)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
              child: Text(
                'ile ',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // nisan20239001100aah (32:1799)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 7*fem),
              constraints: BoxConstraints (
                maxWidth: 244*fem,
              ),
              child: Text(
                '28 Nisan 2023\n9.00-11.00',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // zamanndakiantrenmannzonaylyorm (32:1798)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 33*fem),
              constraints: BoxConstraints (
                maxWidth: 243*fem,
              ),
              child: Text(
                'zamanındaki antrenmanınızı onaylıyor musunuz?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  decoration: TextDecoration.none,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame38k1K (32:1791)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 62*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RezervasyonOnayIki())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 58*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'EVET',
                      style: safeGoogleFont (
                        'Aksara Bali Galang',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1*ffem/fem,
                        decoration: TextDecoration.none,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame37riZ (32:1794)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RezervasyonOlusturma())
                  );},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 58*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'HAYIR',
                    style: safeGoogleFont (
                      'Aksara Bali Galang',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      height: 1*ffem/fem,
                      color: const Color(0xffffffff),
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