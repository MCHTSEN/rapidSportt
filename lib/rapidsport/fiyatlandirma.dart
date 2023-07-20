import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/ayarlarkullanici.dart';
import 'package:myapp/rapidsport/paketsecimonaylama.dart';
import 'package:myapp/utils.dart';

class Fiyatlandirma extends StatelessWidget {
  const Fiyatlandirma({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // fiyatlandirmaRnm (33:1166)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // antremanprogramlarGoP (33:1226)
              left: 34*fem,
              top: 128*fem,
              child: Align(
                child: SizedBox(
                  width: 173*fem,
                  height: 20*fem,
                  child: Text(
                    'Antreman Programları',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // beslenmeprogramlarbUH (33:1232)
              left: 36*fem,
              top: 344*fem,
              child: Align(
                child: SizedBox(
                  width: 172*fem,
                  height: 20*fem,
                  child: Text(
                    'Beslenme Programları',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // antremanvebeslenmeprogramlarDV (33:1233)
              left: 34*fem,
              top: 575*fem,
              child: Align(
                child: SizedBox(
                  width: 276*fem,
                  height: 20*fem,
                  child: Text(
                    'Antreman ve Beslenme Programları',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupqrkuoTs (JPuiW3NNBiJcFwEpQ8qrku)
              left: 21*fem,
              top: 45*fem,
              child: SizedBox(
                width: 180*fem,
                height: 43*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // vuesaxlineararrowleftcw7 (53:2975)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 7*fem),
                      child: TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AyarlarKullanici())
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
                    Text(
                      // paketlerbY9 (33:1228)
                      'PAKETLER',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        decoration: TextDecoration.none,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // line4hr5 (33:1229)
              left: 12*fem,
              top: 151*fem,
              child: Align(
                child: SizedBox(
                  width: 346.04*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line5Le9 (33:1230)
              left: 17*fem,
              top: 367*fem,
              child: Align(
                child: SizedBox(
                  width: 346.04*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line6Naq (33:1231)
              left: 17*fem,
              top: 598*fem,
              child: Align(
                child: SizedBox(
                  width: 346.04*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupdbc1czy (JPuivcVku5nzHj6Zjedbc1)
              left: 22*fem,
              top: 371*fem,
              child: SizedBox(
                width: 333*fem,
                height: 152*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // haftalik6haftalik9haftalik12ha (33:1238)
                      left: 9*fem,
                      top: 15*fem,
                      child: Align(
                        child: SizedBox(
                          width: 101*fem,
                          height: 136*fem,
                          child: Text(
                            '3 HAFTALIK\n\n6 HAFTALIK\n\n9 HAFTALIK\n\n12 HAFTALIK',
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.none,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // 3iu (33:1239)
                      left: 272*fem,
                      top: 15*fem,
                      child: Align(
                        child: SizedBox(
                          width: 50*fem,
                          height: 136*fem,
                          child: Text(
                            '300₺\n\n500₺\n\n650₺\n\n700₺',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // background1p9 (33:1249)
                      left: 2*fem,
                      top: 9*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundXg1 (33:1252)
                      left: 0*fem,
                      top: 46*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundTCH (33:1251)
                      left: 2*fem,
                      top: 126*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundoQZ (33:1250)
                      left: 2*fem,
                      top: 86*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupiw1fNMB (JPuihxCBmLHE6yQyQwiw1f)
              left: 22*fem,
              top: 176*fem,
              child: SizedBox(
                width: 331*fem,
                height: 141*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // CLD (33:1237)
                      left: 269*fem,
                      top: 5*fem,
                      child: Align(
                        child: SizedBox(
                          width: 49*fem,
                          height: 136*fem,
                          child: Text(
                            '100₺\n\n180₺\n\n260₺\n\n350₺',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              decoration: TextDecoration.none,
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // haftalik6haftalik9haftalik12ha (33:1234)
                      left: 9*fem,
                      top: 5*fem,
                      child: Align(
                        child: SizedBox(
                          width: 101*fem,
                          height: 136*fem,
                          child: Text(
                            '3 HAFTALIK\n\n6 HAFTALIK\n\n9 HAFTALIK\n\n12 HAFTALIK',
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              decoration: TextDecoration.none,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundzvH (33:1244)
                      left: 0*fem,
                      top: 37*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundX33 (33:1248)
                      left: 0*fem,
                      top: 77*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundi7X (33:1247)
                      left: 0*fem,
                      top: 114*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundsPj (33:1246)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: TextButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PaketSecimOnaylama())
                  );},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(5*fem),
                                color: const Color(0x660d9a57),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x14000000),
                                    offset: Offset(0*fem, -4*fem),
                                    blurRadius: 25*fem,
                                  ),
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(0*fem, 4*fem),
                                    blurRadius: 2*fem,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroups4kvA1T (JPuj92JkBTThhEwgHis4kV)
              left: 22*fem,
              top: 619*fem,
              child: SizedBox(
                width: 333*fem,
                height: 140*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // haftalik6haftalik9haftalik12ha (33:1240)
                      left: 9*fem,
                      top: 4*fem,
                      child: Align(
                        child: SizedBox(
                          width: 101*fem,
                          height: 136*fem,
                          child: Text(
                            '3 HAFTALIK\n\n6 HAFTALIK\n\n9 HAFTALIK\n\n12 HAFTALIK',
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // BKs (33:1241)
                      left: 272*fem,
                      top: 4*fem,
                      child: Align(
                        child: SizedBox(
                          width: 50*fem,
                          height: 136*fem,
                          child: Text(
                            '350₺\n\n550₺\n\n700₺\n\n800₺',
                            textAlign: TextAlign.right,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundxjw (33:1253)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundXRf (33:1255)
                      left: 2*fem,
                      top: 37*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // backgroundghs (33:1256)
                      left: 2*fem,
                      top: 111*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // background3wj (33:1254)
                      left: 0*fem,
                      top: 74*fem,
                      child: Align(
                        child: SizedBox(
                          width: 331*fem,
                          height: 26*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(5*fem),
                              color: const Color(0x660d9a57),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(0*fem, -4*fem),
                                  blurRadius: 25*fem,
                                ),
                                BoxShadow(
                                  color: const Color(0x3f000000),
                                  offset: Offset(0*fem, 4*fem),
                                  blurRadius: 2*fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}