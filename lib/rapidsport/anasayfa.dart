import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmanprogrami.dart';
import 'package:myapp/rapidsport/ayarlarkullanici.dart';
import 'package:myapp/rapidsport/dersrezerveet.dart';
import 'package:myapp/rapidsport/beslenmeprogrami.dart';
import 'package:myapp/rapidsport/yakindakiantrenorlerigor.dart';
import 'package:myapp/utils.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // anasayfaY5T (34:2556)
        padding: EdgeInsets.fromLTRB(1 * fem, 60 * fem, 1 * fem, 1 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group34123khK (238:1093)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // hogeldinSq3 (34:2559)
                    margin: EdgeInsets.fromLTRB(
                        50 * fem, 0 * fem, 43 * fem, 0 * fem),
                    child: Text(
                      'HOŞGELDİN ',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 25 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.44 * ffem / fem,
                        letterSpacing: -0.4099999964 * fem,
                        color: const Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                    // morganjamesduX (34:2590)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Morgan James',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group50WCd (34:2631)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
              width: 307 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      // group34118YQD (238:1088)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 32 * fem),
                      padding: EdgeInsets.fromLTRB(
                          8 * fem, 7 * fem, 8 * fem, 23 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0 * fem, -4 * fem),
                            blurRadius: 25 * fem,
                          ),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // image11SD (34:2640)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 9 * fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: SizedBox(
                                width: 291 * fem,
                                height: 206 * fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/mapiki.png',
                                ),
                              ),
                            ),
                          ),
                          Center(
                            // yakindakiantrenrlerigroN5 (34:2644)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'YAKINDAKİ ANTRENÖRLERİ GÖR',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  height: 0.8888888889 * ffem / fem,
                                  letterSpacing: -0.4099999964 * fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DersRezerveEt()));
                    },
                    child: Container(
                      // group34119Pr5 (238:1089)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 36 * fem),
                      width: double.infinity,
                      height: 62 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0 * fem, -4 * fem),
                            blurRadius: 25 * fem,
                          ),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'DERS REZERVE ET',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.8888888889 * ffem / fem,
                              letterSpacing: -0.4099999964 * fem,
                              decoration: TextDecoration.none,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AntrenmanProgrami()));
                    },
                    child: Container(
                      // group34120aZB (238:1090)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 38 * fem),
                      width: double.infinity,
                      height: 62 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0 * fem, -4 * fem),
                            blurRadius: 25 * fem,
                          ),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'ANTRENMAN PROGRAMI',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.8888888889 * ffem / fem,
                              decoration: TextDecoration.none,
                              letterSpacing: -0.4099999964 * fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BeslenmeProgrami()));
                    },
                    child: Container(
                      // group34121cuB (238:1091)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 32 * fem),
                      width: double.infinity,
                      height: 62 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0 * fem, -4 * fem),
                            blurRadius: 25 * fem,
                          ),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            '\nBESLENME PROGRAMI',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.8888888889 * ffem / fem,
                              decoration: TextDecoration.none,
                              letterSpacing: -0.4099999964 * fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AyarlarKullanici()));
                    },
                    child: Container(
                      // group34122ejP (238:1092)
                      width: double.infinity,
                      height: 62 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0 * fem, -4 * fem),
                            blurRadius: 25 * fem,
                          ),
                          BoxShadow(
                            color: const Color(0x3f000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'AYARLAR',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 0.8888888889 * ffem / fem,
                              decoration: TextDecoration.none,
                              letterSpacing: -0.4099999964 * fem,
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
          ],
        ),
      ),
    );
  }
}
