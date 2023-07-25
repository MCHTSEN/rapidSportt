import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/egitmenler.dart';
import 'package:myapp/utils.dart';

class DersRezerveEt extends StatelessWidget {
  const DersRezerveEt({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // dersrezerveetwZo (12:1274)
        padding: EdgeInsets.fromLTRB(10 * fem, 15 * fem, 1 * fem, 1 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // vuesaxlineararrowleftCVj (12:1324)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 36 * fem,
                  height: 36 * fem,
                  child: Image.asset(
                    'assets/rapidsport/images/geriok.png',
                    width: 36 * fem,
                    height: 36 * fem,
                  ),
                ),
              ),
            ),
            Container(
              // tmkategorilers65 (12:1275)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
              child: Text(
                'Tüm Kategoriler',
                style: safeGoogleFont(
                  'Arial',
                  fontSize: 36 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667 * ffem / fem,
                  letterSpacing: -1.8 * fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // frame748nh (12:1276)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
              padding: EdgeInsets.fromLTRB(13 * fem, 14 * fem, 162 * fem, 14 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffeff2f5),
                borderRadius: BorderRadius.circular(14 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vuesaxlinearsearchnormaldDf (12:1277)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                    width: 24 * fem,
                    height: 24 * fem,
                    child: Image.asset(
                      'assets/rapidsport/images/buyutec.png',
                      width: 24 * fem,
                      height: 24 * fem,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      // Kategorilerde Ara Text Input
                      decoration: InputDecoration(
                        hintText: 'Kategorilerde Ara',
                        hintStyle: safeGoogleFont(
                          'Arial',
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3529411765 * ffem / fem,
                          letterSpacing: -0.17 * fem,
                          color: const Color(0xffb3bfcb),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              // group34133Ez9 (238:1103)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // autogroupdr9pBeV (JPuVbaYACBxNe4x2kjDR9P)
                    width: double.infinity,
                    height: 103*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                          child: Container(
                            // group34170ieR (250:1072)
                            padding: EdgeInsets.fromLTRB(30*fem, 13*fem, 27.48*fem, 16*fem),
                            width: 103*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0x1e0d9a57),
                              borderRadius: BorderRadius.circular(51.5*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // tennis1dWV (31:968)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.65*fem),
                                  width: 45.52*fem,
                                  height: 53.35*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/tenis.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // tenisMSV (12:1287)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.52*fem, 0*fem),
                                  child: Text(
                                    'Tenis',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Arial',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      height: 1.125*ffem/fem,
                                      color: const Color(0xff292d32),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 19*fem,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                          child: Container(
                            // group34171SD3 (250:1073)
                            padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 25*fem, 16*fem),
                            height: double.infinity,
                            decoration: const BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/rapidsport/images/kategoriarka.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // swimmingpng55427197T (31:757)
                                  width: 54*fem,
                                  height: 51*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/yuzme.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // yzmeGxm (12:1300)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Yüzme',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Arial',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      height: 1.125*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff292d32),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 19*fem,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                          child: Container(
                            // group34172muX (250:1074)
                            padding: EdgeInsets.fromLTRB(23.5*fem, 24*fem, 24.5*fem, 16*fem),
                            width: 103*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0x1e0d9a57),
                              borderRadius: BorderRadius.circular(51.5*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // squash1fzu (31:975)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/squash.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  // autogroupw4y3bdf (JPuVqVJeaphNj1p1vbW4y3)
                                  width: double.infinity,
                                  height: 18*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // squashLbF (12:1303)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 55*fem,
                                            height: 18*fem,
                                            child: Text(
                                              'Squash',
                                              textAlign: TextAlign.center,
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.125*ffem/fem,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.italic,
                                                color: const Color(0xff292d32),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // squashS8V (31:971)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 55*fem,
                                            height: 18*fem,
                                            child: Text(
                                              'Squash',
                                              textAlign: TextAlign.center,
                                              style: safeGoogleFont (
                                                'Arial',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.125*ffem/fem,
                                                decoration: TextDecoration.none,
                                                fontStyle: FontStyle.italic,
                                                color: const Color(0xff292d32),
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16*fem,
                  ),
                  GestureDetector(
                    onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                    child: SizedBox(
                      // autogroupdbi5j7b (JPuVx4x215JJbdVHradbi5)
                      width: double.infinity,
                      height: 103*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group34173rT7 (250:1075)
                            padding: EdgeInsets.fromLTRB(19*fem, 12*fem, 19*fem, 16*fem),
                            width: 103*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0x1e0d9a57),
                              borderRadius: BorderRadius.circular(51.5*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // kickboxing1mKB (31:973)
                                  margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 0*fem),
                                  width: 39*fem,
                                  height: 57*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/kickboks.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  // kickboks6cM (12:1306)
                                  'Kickboks',
                                  textAlign: TextAlign.center,
                                  style: safeGoogleFont (
                                    'Arial',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    height: 1.125*ffem/fem,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xff292d32),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 19*fem,
                          ),
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                            child: Container(
                              // group34174omf (250:1076)
                              padding: EdgeInsets.fromLTRB(24*fem, 11*fem, 21*fem, 16*fem),
                              height: double.infinity,
                              decoration: const BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/rapidsport/images/kategoriarka.png',
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // kickboxingglovesandhangingweig (31:974)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                    width: 59*fem,
                                    height: 57*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/boks.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // bokspRs (12:1292)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                    child: Text(
                                      'Boks',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont (
                                        'Arial',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.125*ffem/fem,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.none,
                                        color: const Color(0xff292d32),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 19*fem,
                          ),
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                            child: Container(
                              // group34175gU5 (250:1077)
                              padding: EdgeInsets.fromLTRB(24*fem, 14*fem, 22.5*fem, 19*fem),
                              width: 103*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0x1e0d9a57),
                                borderRadius: BorderRadius.circular(51.5*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // zumba1b5F (31:976)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.5*fem, 1*fem),
                                    width: 50*fem,
                                    height: 51*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/zumba.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // zumba7JV (12:1304)
                                    margin: EdgeInsets.fromLTRB(3.5*fem, 0*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Zumba',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont (
                                        'Arial',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.none,
                                        height: 1.125*ffem/fem,
                                        fontStyle: FontStyle.italic,
                                        color: const Color(0xff292d32),
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
                  SizedBox(
                    height: 16*fem,
                  ),
                  GestureDetector(
                    onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                    child: SizedBox(
                      // autogroupmrp7bzM (JPuWBttK7FRd6AQT6uMrP7)
                      width: double.infinity,
                      height: 103*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group34176K9f (250:1078)
                            padding: EdgeInsets.fromLTRB(32.5*fem, 24*fem, 31*fem, 16*fem),
                            width: 103*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0x1e0d9a57),
                              borderRadius: BorderRadius.circular(51.5*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // yoga28CD (31:966)
                                  margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 0*fem, 5*fem),
                                  width: 38*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/yoga.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // yogaMam (12:1307)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.5*fem, 0*fem),
                                  child: Text(
                                    'Yoga',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Arial',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      height: 1.125*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff292d32),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 19*fem,
                          ),
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                            child: Container(
                              // group34177rvq (250:1079)
                              padding: EdgeInsets.fromLTRB(27*fem, 19*fem, 25*fem, 16*fem),
                              height: double.infinity,
                              decoration: const BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/rapidsport/images/kategoriarka.png',
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // pilates1Se9 (31:969)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                    width: 52*fem,
                                    height: 45*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/pilates.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // pilatesund (12:1293)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                    child: Text(
                                      'Pilates',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont (
                                        'Arial',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.125*ffem/fem,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.none,
                                        color: const Color(0xff292d32),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 19*fem,
                          ),
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                            child: Container(
                              // group34178uAM (250:1080)
                              padding: EdgeInsets.fromLTRB(32*fem, 21*fem, 30*fem, 16*fem),
                              width: 103*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: const Color(0x1e0d9a57),
                                borderRadius: BorderRadius.circular(51.5*fem),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // runwomanpng29Kb (31:967)
                                    margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 2*fem),
                                    width: 37*fem,
                                    height: 46*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/kosu.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // kouRY1 (12:1305)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
                                    child: Text(
                                      'Koşu',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont (
                                        'Arial',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.125*ffem/fem,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.none,
                                        color: const Color(0xff292d32),
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
                  SizedBox(
                    height: 16*fem,
                  ),
                  GestureDetector(
                    onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                    child: Container(
                      // autogroupquch5FB (JPuWRUL2N3htoTV8abQucH)
                      margin: EdgeInsets.fromLTRB(61*fem, 0*fem, 61*fem, 0*fem),
                      width: double.infinity,
                      height: 103*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group34179XN5 (250:1081)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(25.5*fem, 17*fem, 23*fem, 16*fem),
                            width: 103*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: const Color(0x1e0d9a57),
                              borderRadius: BorderRadius.circular(51.5*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // dumbbellsponsorednativecompany (31:972)
                                  margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0*fem, 0*fem),
                                  width: 54*fem,
                                  height: 52*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/dumbbell.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // fitnessk8M (12:1308)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.5*fem, 0*fem),
                                  child: Text(
                                    'Fitness',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Arial',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      height: 1.125*ffem/fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff292d32),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Egitmenler())
                  );
                          },
                            child: Container(
                              // group34180buf (250:1082)
                              padding: EdgeInsets.fromLTRB(24*fem, 17*fem, 24*fem, 16*fem),
                              height: double.infinity,
                              decoration: const BoxDecoration (
                                image: DecorationImage (
                                  fit: BoxFit.cover,
                                  image: AssetImage (
                                    'assets/rapidsport/images/kategoriarka.png',
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // weightlifting1NZ3 (31:977)
                                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 4*fem),
                                    width: 47*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/rapidsport/images/weightlifting.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    // crossfit3fB (12:1294)
                                    'Crossfit',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont (
                                      'Arial',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.125*ffem/fem,
                                      decoration: TextDecoration.none,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xff292d32),
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}