import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/rapidsport/beslenmekalori.dart';
import 'package:myapp/rapidsport/anasayfa.dart';


class BeslenmeProgramiProgram extends StatelessWidget {
  const BeslenmeProgramiProgram({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmeprogramiprogrammvm (53:1804)
        padding: EdgeInsets.fromLTRB(21*fem, 45*fem, 38*fem, 188*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // vuesaxlineararrowleft261 (53:1814)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeKalori())
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
              // group34150WQV (238:1121)
              margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 0*fem, 0*fem),
              width: 309*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group34147BmX (238:1118)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupuhdwgCV (JPuYhjrxzkfw14bEaeUhdw)
                          margin: EdgeInsets.fromLTRB(115.55*fem, 0*fem, 67.23*fem, 21*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // nisan3qf (53:1859)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.15*fem, 0*fem),
                                child: Text(
                                  'NİSAN',
                                  textAlign: TextAlign.center,
                                  style: safeGoogleFont (
                                    'Arial',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1666666667*ffem/fem,
                                    letterSpacing: -1.8*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // right34Vs (53:1888)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.12*fem),
                                width: 25.07*fem,
                                height: 24.93*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/yuvarlaksag.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // group34135Kgh (238:1105)
                          width: double.infinity,
                          height: 429*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // rectangle1155JoX (53:1860)
                                left: 0*fem,
                                top: 40*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 309*fem,
                                    height: 389*fem,
                                    child: Container(
                                      decoration: const BoxDecoration (
                                        color: Color(0x660d9a57),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group34136kvR (238:1106)
                                left: 13.1149902344*fem,
                                top: 50.6791992188*fem,
                                child: Container(
                                  width: 286.82*fem,
                                  height: 136.32*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // backgroundNgu (53:1873)
                                        left: 0*fem,
                                        top: 3.7456054688*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 286.82*fem,
                                            height: 132.58*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(5*fem),
                                                color: const Color(0xffffffff),
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
                                        // yumurta1dilimtambudayekmek2yem (53:1883)
                                        left: 25.8850097656*fem,
                                        top: 33.3208007812*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 172*fem,
                                            height: 80*fem,
                                            child: Text(
                                              '2 Yumurta\n1 dilim tam buğday ekmek\n2 yemek kaşığı lor peyniri\nDomates, salatalık, yeşillik\n',
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // ananyyX (53:1879)
                                        left: 7.1420898438*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 85*fem,
                                            height: 42*fem,
                                            child: Text(
                                              '1.ANA ÖĞÜN',
                                              textAlign: TextAlign.center,
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 2.8*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff0d9a57),
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
                                // group34137LBo (238:1107)
                                left: 12*fem,
                                top: 192*fem,
                                child: Container(
                                  width: 286.82*fem,
                                  height: 110*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // backgroundPvm (53:1875)
                                        left: 0*fem,
                                        top: 4.4340820312*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 286.82*fem,
                                            height: 89.57*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(5*fem),
                                                color: const Color(0xffffffff),
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
                                        // yemekkayourt2adetceviz1adetmuz (53:1885)
                                        left: 25*fem,
                                        top: 30*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 114*fem,
                                            height: 80*fem,
                                            child: Text(
                                              '4 yemek kaşığı yoğurt\n2 adet ceviz\n1 adet muz',
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // aranVVw (53:1880)
                                        left: 6.1206665039*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 72*fem,
                                            height: 42*fem,
                                            child: Text(
                                              'ARA ÖĞÜN',
                                              textAlign: TextAlign.center,
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 2.8*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff0d9a57),
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
                                // group34138h6D (238:1108)
                                left: 12*fem,
                                top: 291*fem,
                                child: Container(
                                  width: 286.82*fem,
                                  height: 126*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(5*fem),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // backgroundZeD (53:1874)
                                        left: 0*fem,
                                        top: 3.4614257812*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 286.82*fem,
                                            height: 122.54*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(5*fem),
                                                color: const Color(0xffffffff),
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
                                        // gramtavuk2yemekkayaszbulgurpil (53:1884)
                                        left: 25*fem,
                                        top: 37*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 219*fem,
                                            height: 80*fem,
                                            child: Text(
                                              '200 gram tavuk\n2 yemek kaşığı yağsız bulgur pilavı\n1 kase salata (yağsız, tuzsuz)\n',
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // anan4so (53:1881)
                                        left: 7.1420898438*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 85*fem,
                                            height: 42*fem,
                                            child: Text(
                                              '2.ANA ÖĞÜN',
                                              textAlign: TextAlign.center,
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 2.8*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff0d9a57),
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
                                // group34139GDB (238:1109)
                                left: 3.0502929688*fem,
                                top: 0*fem,
                                child: SizedBox(
                                  width: 270*fem,
                                  height: 46*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // Ua9 (53:1869)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.95*fem, 0*fem),
                                        child: Text(
                                          '24',
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
                                        // autogrouppenhdLZ (JPuZ8UekH3PgDgLdmFPEnH)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.05*fem, 0.19*fem),
                                        width: 47*fem,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // ellipse777GeR (53:1861)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 47*fem,
                                                  height: 40*fem,
                                                  child: Image.asset(
                                                    'assets/rapidsport/images/programtarih.png',
                                                    width: 47*fem,
                                                    height: 40*fem,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // Tyo (53:1867)
                                              left: 7.2514648438*fem,
                                              top: 3.8120117188*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 33*fem,
                                                  height: 42*fem,
                                                  child: Text(
                                                    '25',
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
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // tJR (53:1866)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '26',
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
                                        // 7ws (53:1865)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '27',
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
                                        // bMF (53:1864)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                        child: Text(
                                          '28',
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
                                        // QJh (53:1863)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                        child: Text(
                                          '29',
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
                                      Text(
                                        // QrR (53:1870)
                                        '30',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // right2Fs3 (53:1887)
                                left: 275*fem,
                                top: 10*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 25.07*fem,
                                    height: 24.93*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/yuvarlaksag.png',
                                      fit: BoxFit.cover,
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
                  TextButton(
                    // frame39uwb (53:1876)
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
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
                          'ÇIKIŞ',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}