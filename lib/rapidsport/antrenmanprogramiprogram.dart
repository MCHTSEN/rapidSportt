import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/rapidsport/antrenmanoneri.dart';

class AntrenmanProgramiProgram extends StatelessWidget {
  const AntrenmanProgramiProgram({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmanprogramiprogramjE5 (53:2522)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // group341399Yh (250:1086)
              left: 44.0502929688*fem,
              top: 117*fem,
              child: SizedBox(
                width: 270*fem,
                height: 46*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // z3X (250:1089)
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
                      // autogroup7brmmCh (JPunBbuBnHiuYUwMRF7BrM)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.05*fem, 0.19*fem),
                      width: 47*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse777bhX (250:1087)
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
                            // r7f (250:1094)
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
                      // pCu (250:1093)
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
                      // sws (250:1092)
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
                      // 4WZ (250:1091)
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
                      // 8FX (250:1088)
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
                      // m3b (250:1090)
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
              // right2H1w (250:1095)
              left: 316*fem,
              top: 127*fem,
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
            Positioned(
              // vuesaxlineararrowleft8YM (53:2545)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanOneri())
                  );},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/rapidsport/images/geriok.png',
                      width: 36*fem,
                      height: 36*fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group34149fgh (238:1120)
              left: 45*fem,
              top: 75*fem,
              child: SizedBox(
                width: 308*fem,
                height: 541*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group34148wPK (238:1119)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupcgn1nuj (JPunP6a2wcd7RTPNpLCGN1)
                            margin: EdgeInsets.fromLTRB(115*fem, 0*fem, 67*fem, 39*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // nisanHLh (53:2523)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
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
                                  // right3jCh (53:2543)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                  width: 25*fem,
                                  height: 25*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/yuvarlaksag.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // group3414591X (238:1116)
                            width: double.infinity,
                            height: 385*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle1155SmK (53:2524)
                                  left: 0*fem,
                                  top: 1*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 308*fem,
                                      height: 384*fem,
                                      child: Container(
                                        decoration: const BoxDecoration (
                                          color: Color(0x660d9a57),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group34144UCD (238:1115)
                                  left: 13*fem,
                                  top: 270*fem,
                                  child: Container(
                                    width: 286*fem,
                                    height: 105*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Container(
                                      // group34112vK7 (53:2943)
                                      padding: EdgeInsets.fromLTRB(7*fem, 12*fem, 12*fem, 12*fem),
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: const Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
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
                                      child: Center(
                                        // hareketleriprogressiveoverload (53:2947)
                                        child: SizedBox(
                                          child: Container(
                                            constraints: BoxConstraints (
                                              maxWidth: 267*fem,
                                            ),
                                            child: Text(
                                              'Hareketleri progressive overload olarak \n(her sette ağırlığı arttırıp tekrar sayısını düşürerek) 15-12-10-8 tekrar olarak yapın',
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333*ffem/fem,
                                                letterSpacing: -0.75*fem,
                                                color: const Color(0xff0d9a57),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group34141L9s (238:1112)
                                  left: 13*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 286*fem,
                                    height: 109*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Container(
                                      // group34140RBK (238:1111)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // background8bX (53:2525)
                                            left: 0*fem,
                                            top: 7*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 286*fem,
                                                height: 88*fem,
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
                                            // group34110EY5 (53:2940)
                                            left: 28*fem,
                                            top: 0*fem,
                                            child: SizedBox(
                                              width: 155*fem,
                                              height: 109*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // benchpress4setchestflies4setin (53:2528)
                                                    left: 0*fem,
                                                    top: 29*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 155*fem,
                                                        height: 80*fem,
                                                        child: Text(
                                                          'Bench press 4 set\nChest flies 4 set\nIncline bench press 4 set\n\n',
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
                                                    // gsDHX (53:2531)
                                                    left: 2*fem,
                                                    top: 0*fem,
                                                    child: Center(
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 48*fem,
                                                          height: 42*fem,
                                                          child: Text(
                                                            'GÖĞÜS',
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
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group34184a1b (250:1097)
                                  left: 13*fem,
                                  top: 180.9624023438*fem,
                                  child: Container(
                                    width: 286*fem,
                                    height: 78.5*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Container(
                                      // group34143T5P (238:1114)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Container(
                                        // group34109yZX (53:2939)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // backgroundsuo (53:2526)
                                              left: 0*fem,
                                              top: 7.0375976562*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 286*fem,
                                                  height: 71.46*fem,
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
                                              // ropepushdown4settricepsextensi (53:2530)
                                              left: 25*fem,
                                              top: 33.5*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 143*fem,
                                                  height: 40*fem,
                                                  child: Text(
                                                    'Rope pushdown 4 set\nTriceps extension 4 set',
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
                                              // tricepsxyB (53:2532)
                                              left: 17.5*fem,
                                              top: 0*fem,
                                              child: Center(
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 51*fem,
                                                    height: 42*fem,
                                                    child: Text(
                                                      'TRICEPS',
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
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group34183Qih (250:1096)
                                  left: 13*fem,
                                  top: 99*fem,
                                  child: Container(
                                    width: 286*fem,
                                    height: 79*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Container(
                                      // group34142rah (238:1113)
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Container(
                                        // group34111kAH (53:2941)
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // backgroundfHF (53:2527)
                                              left: 0*fem,
                                              top: 6*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 286*fem,
                                                  height: 73*fem,
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
                                              // group34112Qe9 (53:2942)
                                              left: 22*fem,
                                              top: 0*fem,
                                              child: SizedBox(
                                                width: 130*fem,
                                                height: 72*fem,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // shoulderpress4setlateralraise4 (53:2529)
                                                      left: 0*fem,
                                                      top: 32*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 130*fem,
                                                          height: 40*fem,
                                                          child: Text(
                                                            'Shoulder press 4 set\nLateral raise 4 set\n',
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
                                                      // omuzoph (53:2533)
                                                      left: 1.5*fem,
                                                      top: 0*fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 40*fem,
                                                          height: 42*fem,
                                                          child: Text(
                                                            'OMUZ',
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
                                          ],
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
                    TextButton(
                      // frame39Q3o (53:2549)
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
                  );},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 65*fem,
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
            ),
          ],
        ),
      ),
          );
  }
}