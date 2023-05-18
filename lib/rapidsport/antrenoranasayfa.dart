import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenorayarlar.dart';
import 'package:myapp/rapidsport/antrenormusait.dart';
import 'package:myapp/rapidsport/antrenorprofil.dart';
import 'package:myapp/rapidsport/antrenorrezervedersler.dart';
import 'package:myapp/utils.dart';

class AntrenorAnasayfa extends StatelessWidget {
  const AntrenorAnasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenoranasayfao4H (214:2179)
        padding: EdgeInsets.fromLTRB(0*fem, 30*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hogeldiniz13s (214:2180)
              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 1*fem, 48*fem),
              child: Text(
                'Hoşgeldiniz',
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
              // 2jf (214:2188)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 0*fem, 31*fem),
              child: Text(
                '.......................',
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
              // dersiinmsaitmisiniz4RT (214:2181)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              constraints: BoxConstraints (
                maxWidth: 388*fem,
              ),
              child: Text(
                'Ders için müsait misiniz?',
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorMusait())
                  );
              },
              child: Container(
                // frame38dcy (250:1044)
                margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 16*fem, 20*fem),
                width: double.infinity,
                height: 64*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'MÜSAİTİM',
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
            Container(
              // frame37QXF (214:2185)
              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 15*fem, 34*fem),
              width: double.infinity,
              height: 64*fem,
              decoration: BoxDecoration (
                color: const Color(0xff0d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'MÜSAİT DEĞİLİM',
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
            Container(
              // line6Z2m (214:2189)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 15.96*fem, 18*fem),
              width: double.infinity,
              height: 1*fem,
              decoration: const BoxDecoration (
                color: Color(0xff000000),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorRezerveDersler())
                  );
              },
              child: Container(
                // group34158ScM (250:1038)
                margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 16*fem, 10*fem),
                padding: EdgeInsets.fromLTRB(26*fem, 18*fem, 26*fem, 18*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(30*fem),
                ),
                child: Text(
                  'Rezerve dersler',
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // group34159L5T (250:1039)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 14*fem, 15*fem),
              width: double.infinity,
              height: 56*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: TextButton(
                // group36D9F (214:2192)
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorProfil())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(31*fem, 18*fem, 31*fem, 18*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: const Color(0x660d9a57),
                    borderRadius: BorderRadius.circular(30*fem),
                  ),
                  child: Text(
                    'Profil',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // group34160jmo (250:1040)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 16*fem, 0*fem),
              width: double.infinity,
              height: 56*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: TextButton(
                // group37R8q (214:2195)
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAyarlar())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 29*fem, 18*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: const Color(0x660d9a57),
                    borderRadius: BorderRadius.circular(30*fem),
                  ),
                  child: Text(
                    'Ayarlar',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
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