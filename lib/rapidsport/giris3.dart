import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

import 'anasayfa.dart';

class Giris3 extends StatelessWidget {
  const Giris3({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // giris3AXw (214:2141)
        padding: EdgeInsets.fromLTRB(1*fem, 130*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // RTs (214:2178)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 12*fem),
              width: 289*fem,
              height: 261*fem,
              child: Image.asset(
                'assets/rapidsport/images/giris3.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // group34155hgH (250:1035)
              margin: EdgeInsets.fromLTRB(10.5*fem, 0*fem, 0*fem, 58*fem),
              width: 337*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // beslenmenizideunutmadk8mb (214:2172)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 3*fem),
                    constraints: BoxConstraints (
                      maxWidth: 218*fem,
                    ),
                    child: Text(
                      'Beslenmenizi de unutmadık',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont (
                        'Arial',
                        fontSize: 28*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2142857143*ffem/fem,
                        letterSpacing: 0.3600000143*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // hedefinizeulamanziinantrenmank (214:2173)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                    constraints: BoxConstraints (
                      maxWidth: 337*fem,
                    ),
                    child: Text(
                      'Hedefinize ulaşmanız için antrenman kadar beslenmenin de önemi var. Uzman diyetisyenlerimiz tarafından size en uygun beslenme programını hazırlıyoruz',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont (
                        'Arial',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2941176471*ffem/fem,
                        letterSpacing: -0.4099999964*fem,
                        color: const Color(0x993c3c43),
                      ),
                    ),
                  ),
                  Container(
                    // sliderbBK (214:2174)
                    margin: EdgeInsets.fromLTRB(133.5*fem, 0*fem, 147.5*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse85cH (214:2176)
                          width: 8*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                            color: const Color(0xffc7c7cc),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        Container(
                          // ellipse9xg5 (214:2177)
                          width: 8*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                            color: const Color(0xffc7c7cc),
                          ),
                        ),
                        SizedBox(
                          width: 16*fem,
                        ),
                        Container(
                          // ellipse7QHB (214:2175)
                          width: 8*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                            color: const Color(0xff0d9a57),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
                  );
              },
              child: Container(
                // autogroupwmmwuzd (JPup9sx77soVaurz1mWmmw)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.5*fem, 0*fem),
                width: 343*fem,
                height: 50*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(8*fem),
                ),
                child: Center(
                  child: Text(
                    'Başlayın',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 17*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2941176471*ffem/fem,
                      letterSpacing: -0.4099999964*fem,
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