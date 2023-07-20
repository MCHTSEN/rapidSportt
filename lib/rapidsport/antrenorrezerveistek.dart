import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/rapidsport/antrenorrezervasyononay.dart';
import 'package:myapp/rapidsport/antrenorrezervasyonred.dart';
import 'package:myapp/utils.dart';

class AntrenorRezerveIstek extends StatelessWidget {
  const AntrenorRezerveIstek({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorrezerveistekra1 (214:2216)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // home138h (214:2357)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 4*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAnasayfa())
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
              // mayis09001000tenisGn9 (214:2217)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
              width: double.infinity,
              // constraints: BoxConstraints (
              //   maxWidth: 100*fem,
              // ),
              child: Text(
                '15 MAYIS\n09.00-10.00\nTENİS',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // antrenmanrezervasyonunuonaylyo (214:2224)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 44*fem),
              width: double.infinity,
              // constraints: BoxConstraints (
              //   maxWidth: 302*fem,
              // ),
              child: Text(
                'Antrenman rezervasyonunu onaylıyor musunuz?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.6666666667*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame38d8q (214:2218)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.5*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorRezervasyonOnay())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 72*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'EVET, ONAYLIYORUM',
                      style: safeGoogleFont (
                        'Aksara Bali Galang',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1*ffem/fem,
                        color: const Color(0xffffffff),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame39ZRo (214:2221)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorRezervasyonRed())
                  );},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 67*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'HAYIR, ONAYLAMIYORUM',
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
          ],
        ),
      ),
          );
  }
}