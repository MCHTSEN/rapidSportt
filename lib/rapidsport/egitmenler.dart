import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/dersrezerveet.dart';
import 'package:myapp/rapidsport/rezervasyonolusturma.dart';
import 'package:myapp/utils.dart';

class Egitmenler extends StatelessWidget {
  const Egitmenler({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // egitmenlerbKj (31:980)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              // vuesaxlineararrowleftC4d (31:1019)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const DersRezerveEt())
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
            Container(
              // teniseitmenleriLq3 (31:981)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'Tenis Eğitmenleri',
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667*ffem/fem,
                  decoration: TextDecoration.none,
                  letterSpacing: -1.8*fem,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // frame74MEM (31:982)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
              padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 163*fem, 14*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0xffeff2f5),
                borderRadius: BorderRadius.circular(14*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // vuesaxlinearsearchnormalLMB (31:983)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                    width: 24*fem,
                    height: 24*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/buyutec.png',
                      width: 24*fem,
                      height: 24*fem,
                    ),
                  ),
                  Text(
                    // eitmenlerdearaEL5 (31:984)
                    'Eğitmenlerde Ara',
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 17*ffem,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      height: 1.3529411765*ffem/fem,
                      letterSpacing: -0.17*fem,
                      color: const Color(0xffb3bfcb),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group496t5 (31:1068)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RezervasyonOlusturma())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(8.91*fem, 7.87*fem, 34.76*fem, 2.69*fem),
                  height: 61*fem,
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
                        // autogroupnythgE1 (JPuZYddAa7oeHQUFV3NytH)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.25*fem, 6.16*fem),
                        width: 44.56*fem,
                        height: 44.27*fem,
                        child: Image.asset(
                          'assets/rapidsport/images/avataryer.png',
                          width: 44.56*fem,
                          height: 44.27*fem,
                        ),
                      ),
                      Container(
                        // autogroupn8whU9s (JPuZdTpT2jVEhMJB2bn8WH)
                        margin: EdgeInsets.fromLTRB(0*fem, 7.87*fem, 87.53*fem, 9.11*fem),
                        width: 110.99*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // juliecapozziello5fT (31:1074)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.69*fem),
                              width: double.infinity,
                              child: Text(
                                'Julie Capozziello',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                  height: 1.1428571429*ffem/fem,
                                  letterSpacing: -0.4099999964*fem,
                                  color: const Color(0xff50555c),
                                ),
                              ),
                            ),
                            SizedBox(
                              // image17K41 (31:1070)
                              width: 85.78*fem,
                              height: 14.76*fem,
                              child: Image.asset(
                                'assets/rapidsport/images/besyildiz.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // maltepePJm (31:1075)
                        margin: EdgeInsets.fromLTRB(0*fem, 34.44*fem, 0*fem, 0*fem),
                        child: Text(
                          'MALTEPE',
                          textAlign: TextAlign.center,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // group34161au3 (250:1047)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              padding: EdgeInsets.fromLTRB(8.91*fem, 7.87*fem, 38.26*fem, 2.69*fem),
              height: 61*fem,
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
                    // autogrouprbdfrEH (JPuZssa787vLLmq7jjRBDf)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.25*fem, 6.16*fem),
                    width: 44.56*fem,
                    height: 44.27*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/avataryer.png',
                      width: 44.56*fem,
                      height: 44.27*fem,
                    ),
                  ),
                  Container(
                    // autogroupajfbW3w (JPuZxNScSu9CP4sjb7ajFB)
                    margin: EdgeInsets.fromLTRB(0*fem, 5.13*fem, 116.24*fem, 9.11*fem),
                    width: 85.78*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // bretpattonBA5 (31:1082)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.44*fem),
                          width: double.infinity,
                          child: Text(
                            'Bret Patton',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              height: 1.1428571429*ffem/fem,
                              letterSpacing: -0.4099999964*fem,
                              color: const Color(0xff50555c),
                            ),
                          ),
                        ),
                        SizedBox(
                          // image17me5 (31:1078)
                          width: 85.78*fem,
                          height: 14.76*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/besyildiz.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // kartalsh7 (31:1083)
                    margin: EdgeInsets.fromLTRB(0*fem, 34.44*fem, 0*fem, 0*fem),
                    child: Text(
                      'KARTAL',
                      textAlign: TextAlign.center,
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
                  ),
                ],
              ),
            ),
            Container(
              // group34167ixd (250:1053)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              padding: EdgeInsets.fromLTRB(8.91*fem, 7.87*fem, 33.76*fem, 2.69*fem),
              height: 61*fem,
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
                    // autogroupdnum269 (JPuaBwtKhhRU6MxR4odnUM)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.01*fem, 6.16*fem),
                    width: 44.56*fem,
                    height: 44.27*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/avataryer.png',
                      width: 44.56*fem,
                      height: 44.27*fem,
                    ),
                  ),
                  Container(
                    // autogroupw8hkQMb (JPuaHSjARz2XFcLwziW8HK)
                    margin: EdgeInsets.fromLTRB(0*fem, 5.13*fem, 103.76*fem, 9.11*fem),
                    width: 94*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // dontrellbrittondVF (31:1090)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.44*fem),
                          width: double.infinity,
                          child: Text(
                            'Dontrell Britton',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1428571429*ffem/fem,
                              letterSpacing: -0.4099999964*fem,
                              decoration: TextDecoration.none,
                              color: const Color(0xff50555c),
                            ),
                          ),
                        ),
                        Container(
                          // image17GYD (31:1086)
                          margin: EdgeInsets.fromLTRB(0.24*fem, 0*fem, 0*fem, 0*fem),
                          width: 85.78*fem,
                          height: 14.76*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/besyildiz.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // ataehirZ1X (31:1091)
                    margin: EdgeInsets.fromLTRB(0*fem, 34.44*fem, 0*fem, 0*fem),
                    child: Text(
                      'ATAŞEHİR',
                      textAlign: TextAlign.center,
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
                  ),
                ],
              ),
            ),
            Container(
              // group34163x3f (250:1049)
              padding: EdgeInsets.fromLTRB(8.91*fem, 7.87*fem, 32.76*fem, 2.69*fem),
              height: 61*fem,
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
                    // autogroup2nht5Gh (JPuaXgpRxTEFiCzErm2NhT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.25*fem, 6.16*fem),
                    width: 44.56*fem,
                    height: 44.27*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/avataryer.png',
                      width: 44.56*fem,
                      height: 44.27*fem,
                    ),
                  ),
                  Container(
                    // autogroupkksbRE5 (JPuacGX8Zh4oLuygdgkKsb)
                    margin: EdgeInsets.fromLTRB(0*fem, 5.13*fem, 91.26*fem, 9.11*fem),
                    width: 105.26*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // kelseyredmondsbs (31:1098)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5.44*fem),
                          width: double.infinity,
                          child: Text(
                            'Kelsey Redmond',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1428571429*ffem/fem,
                              decoration: TextDecoration.none,
                              letterSpacing: -0.4099999964*fem,
                              color: const Color(0xff50555c),
                            ),
                          ),
                        ),
                        SizedBox(
                          // image17H9o (31:1094)
                          width: 85.78*fem,
                          height: 14.76*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/besyildiz.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // bostanciza1 (31:1099)
                    margin: EdgeInsets.fromLTRB(0*fem, 34.44*fem, 0*fem, 0*fem),
                    child: Text(
                      'BOSTANCI',
                      textAlign: TextAlign.center,
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