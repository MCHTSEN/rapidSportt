import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/utils.dart';

class RezervasyonOnayIki extends StatelessWidget {
  const RezervasyonOnayIki({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // rezervasyononayikiA1K (32:1800)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // home11nd (32:1805)
              margin: EdgeInsets.fromLTRB(280*fem, 0*fem, 0*fem, 80*fem),
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
              // rezervasyonunuzbaariylaoluturu (32:1804)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              constraints: BoxConstraints (
                maxWidth: 335*fem,
              ),
              child: Text(
                'REZERVASYONUNUZ BAŞARIYLA OLUŞTURULMUŞTUR.',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 34*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.4705882353*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // correct2PAu (34:2551)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 20*fem),
              width: 123*fem,
              height: 123*fem,
              child: Image.asset(
                'assets/rapidsport/images/yesiltik.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // iyiantrenmanlardilerizQrh (34:2550)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
              constraints: BoxConstraints (
                maxWidth: 252*fem,
              ),
              child: Text(
                'İyi antrenmanlar\n dileriz',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 34*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.4705882353*ffem/fem,
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