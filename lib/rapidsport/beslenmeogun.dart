import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/beslenmekalori.dart';
import 'package:myapp/rapidsport/beslenmevegan.dart';
import 'package:myapp/utils.dart';

class BeslenmeOgun extends StatelessWidget {
  const BeslenmeOgun({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmeogundHo (53:1594)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // vuesaxlineararrowlefto5o (53:1609)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 312*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeVegan())
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
              // hangindzeniseniniindahauygunAK (53:1595)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 49*fem),
              constraints: BoxConstraints (
                maxWidth: 288*fem,
              ),
              child: Text(
                'Hangi öğün düzeni senin için daha uygun?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  height: 1.4*ffem/fem,
                  letterSpacing: -1.5*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame38xFX (53:1599)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '3 ana 1 ara öğün',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37hcR (53:1602)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '2 ana 1 ara öğün',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37iXX (53:1605)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '3 ana 2 ara öğün',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame39WTP (53:1654)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 88*fem),
              width: double.infinity,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '2 ana 2 ara öğün',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    decoration: TextDecoration.none,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame37YQ5 (53:1596)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeKalori())
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
                    'Devam',
                    style: safeGoogleFont (
                      'Aksara Bali Galang',
                      fontSize: 18*ffem,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w400,
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