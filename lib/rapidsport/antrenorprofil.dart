import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/utils.dart';

class AntrenorProfil extends StatelessWidget {
  const AntrenorProfil({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorprofil5Xs (214:2297)
        width: double.infinity,
        height: 700*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroup5qhjz93 (JPutyEvctyF5bcLGLj5QHj)
              left: 13*fem,
              top: 44*fem,
              child: SizedBox(
                width: 263*fem,
                height: 110*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupc5emhZF (JPuuAemGmqXbtAqTpGc5em)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                      width: 110*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // ellipse22Ld (214:2301)
                            left: 27*fem,
                            top: 27*fem,
                            child: Align(
                              child: SizedBox(
                                width: 83*fem,
                                height: 83*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(41.5*fem),
                                    image: const DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/rapidsport/images/ornekkullanici.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // vuesaxlineararrowleftWFo (214:2308)
                            left: 0*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 36*fem,
                                height: 36*fem,
                                child: TextButton(
                                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAnasayfa())
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroupurtjoVo (JPuuG9c7W88f3RDzkBURTj)
                      margin: EdgeInsets.fromLTRB(0*fem, 27*fem, 0*fem, 13*fem),
                      width: 145*fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroup3z49Kyw (JPuuNeRHdv7uKcxSkd3Z49)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                            width: double.infinity,
                            height: 43*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // morganjamesrys (214:2302)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 145*fem,
                                      height: 25*fem,
                                      child: Text(
                                        'Morgan James',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 20*ffem,
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
                                  // tenisantrenrk3f (214:2309)
                                  left: 1*fem,
                                  top: 22*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 132*fem,
                                      height: 21*fem,
                                      child: Text(
                                        'Tenis antrenörü',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 17*ffem,
                                          decoration: TextDecoration.none,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                // star1At5 (214:2310)
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/yildizsari.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                              SizedBox(
                                width: 3*fem,
                              ),
                              SizedBox(
                                // star2u4y (214:2311)
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/yildizsari.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                              SizedBox(
                                width: 3*fem,
                              ),
                              SizedBox(
                                // star3pSq (214:2312)
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/yildizsari.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                              SizedBox(
                                width: 3*fem,
                              ),
                              SizedBox(
                                // star4Ydj (214:2313)
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/yildizsari.png',
                                  width: 25*fem,
                                  height: 25*fem,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // branVYy (214:2303)
              left: 38.0180664062*fem,
              top: 167*fem,
              child: Align(
                child: SizedBox(
                  width: 57*fem,
                  height: 20*fem,
                  child: Text(
                    'BRANŞ',
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
              // line1nHB (214:2304)
              left: 15*fem,
              top: 196*fem,
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
              // line2JmK (214:2305)
              left: 15*fem,
              top: 327*fem,
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
              // yorumlarS6q (214:2307)
              left: 25*fem,
              top: 300*fem,
              child: Align(
                child: SizedBox(
                  width: 93*fem,
                  height: 20*fem,
                  child: Text(
                    'YORUMLAR',
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
              // tenis885 (214:2314)
              left: 39.0180664062*fem,
              top: 218*fem,
              child: Align(
                child: SizedBox(
                  width: 49*fem,
                  height: 20*fem,
                  child: Text(
                    'TENİS',
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
              // kouC7w (214:2315)
              left: 39.0180664062*fem,
              top: 247*fem,
              child: Align(
                child: SizedBox(
                  width: 47*fem,
                  height: 20*fem,
                  child: Text(
                    'KOŞU',
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
              // autogroup6uqkVcq (JPuupJMD3FcA4n6w6D6UqK)
              left: 25*fem,
              top: 337*fem,
              child: Container(
                width: 331*fem,
                height: 56*fem,
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
                child: Container(
                  // group519xH (214:2317)
                  padding: EdgeInsets.fromLTRB(8.63*fem, 4*fem, 184*fem, 4*fem),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogrouposczpYd (JPuv9nnjSdZtuPJH7XoscZ)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        width: 43.13*fem,
                        height: 40.65*fem,
                        child: Image.asset(
                          'assets/rapidsport/images/avataryer.png',
                          width: 43.13*fem,
                          height: 40.65*fem,
                        ),
                      ),
                      Container(
                        // autogroupazx583X (JPuvGhkszidZ9ekrjhAzx5)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                        width: 87*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // dontrellbritton3gH (214:2323)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                              width: double.infinity,
                              child: Text(
                                'Dontrell Britton',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333*ffem/fem,
                                  decoration: TextDecoration.none,
                                  letterSpacing: -0.4099999964*fem,
                                  color: const Color(0xff50555c),
                                ),
                              ),
                            ),
                            SizedBox(
                              // image17x2Z (214:2319)
                              width: 45*fem,
                              height: 10*fem,
                              child: Image.asset(
                                'assets/rapidsport/images/besyildiz.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              // okkeyiflibirderstitB7 (214:2324)
                              'Çok keyifli bir dersti.',
                              style: safeGoogleFont (
                                'Inter',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6*ffem/fem,
                                decoration: TextDecoration.none,
                                letterSpacing: -0.4099999964*fem,
                                color: const Color(0xff50555c),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupkg8uzjw (JPuvVhPEGJc3i4DkkaKG8u)
              left: 25*fem,
              top: 403*fem,
              child: Container(
                width: 331*fem,
                height: 56*fem,
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
                child: Container(
                  // group52TNd (214:2326)
                  padding: EdgeInsets.fromLTRB(8.63*fem, 3*fem, 175*fem, 3*fem),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroup7znuiZT (JPuvfMmoBXyEXwsbqh7ZNu)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem,0*fem, 0*fem),
                        width: 43.13*fem,
                        height: 38*fem,
                        child: Image.asset(
                          'assets/rapidsport/images/avataryer.png',
                          width: 43.13*fem,
                          height: 40.65*fem,
                        ),
                      ),
                      Container(
                        // autogrouph7qr2a9 (JPuvjreJWKC6aEvDh5H7QR)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                        width: 96*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // kelseyredmondYYV (214:2332)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                              width: double.infinity,
                              child: Text(
                                'Kelsey Redmond',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  height: 1.3333333333*ffem/fem,
                                  letterSpacing: -0.4099999964*fem,
                                  color: const Color(0xff50555c),
                                ),
                              ),
                            ),
                            SizedBox(
                              // image17FC1 (214:2328)
                              width: 45*fem,
                              height: 10*fem,
                              child: Image.asset(
                                'assets/rapidsport/images/besyildiz.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              // okbilgilibirantrenrz9b (214:2333)
                              'Çok bilgili bir antrenör.',
                              style: safeGoogleFont (
                                'Inter',
                                fontSize: 10*ffem,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                height: 1.6*ffem/fem,
                                letterSpacing: -0.4099999964*fem,
                                color: const Color(0xff50555c),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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