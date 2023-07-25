import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/kaydol.dart';

class GirisYap extends StatelessWidget {
  const GirisYap({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // girisyapWKF (214:1549)
        padding: EdgeInsets.fromLTRB(10 * fem, 70 * fem, 1 * fem, 1 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroups84mdHP (JPuoayjG2cnrDqUcMqs84m)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 147 * fem, 21 * fem),
              width: 201 * fem,
              height: 66 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // hogeldinizMMo (214:1899)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 200 * fem,
                        height: 46 * fem,
                        child: Text(
                          'Hoşgeldiniz!',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2777777778 * ffem / fem,
                            letterSpacing: -0.72 * fem,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xff292d32),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // giriyapnveyakaydolunVcR (214:1900)
                    left: 0 * fem,
                    top: 43 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 201 * fem,
                        height: 23 * fem,
                        child: Text(
                          'Giriş yapın veya kaydolun',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3529411765 * ffem / fem,
                            letterSpacing: -0.17 * fem,
                            color: const Color(0xff6a788a),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame74uw3 (214:1901)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
              padding: EdgeInsets.fromLTRB(10 * fem, 10 * fem, 13 * fem, 10 * fem),
              width: double.infinity,
              height: 63 * fem,
              decoration: BoxDecoration(
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(230 * fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame102KE5 (214:1902)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                    width: 151 * fem,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff0d9a57),
                      borderRadius: BorderRadius.circular(90 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Giriş yap',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          height: 1.3529411765 * ffem / fem,
                          letterSpacing: -0.17 * fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    // frame103s97 (214:1904)
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Kaydol()),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 174 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Kaydol',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                            height: 1.3529411765 * ffem / fem,
                            letterSpacing: -0.17 * fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34185ows (250:1214)
              margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 18 * fem, 32 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // emailHs3 (214:1906)
                    margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 13 * fem),
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3529411765 * ffem / fem,
                        decoration: TextDecoration.none,
                        letterSpacing: -0.17 * fem,
                        color: const Color(0xff292d32),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle1157Jn9 (250:1213)
                    width: double.infinity,
                    height: 38 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffd9d9d9)),
                      color: const Color(0xffffffff),
                    ),
                    child: TextFormField(
                      // Email TextFormField
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Emailinizi yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10 * fem),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34186zey (250:1215)
              margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 18 * fem, 21 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // ifreqvV (214:1907)
                    margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 13 * fem),
                    child: Text(
                      'Şifre',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 17 * ffem,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        height: 1.3529411765 * ffem / fem,
                        letterSpacing: -0.17 * fem,
                        color: const Color(0xff292d32),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle11563mf (250:1212)
                    width: double.infinity,
                    height: 38 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffd9d9d9)),
                      color: const Color(0xffffffff),
                    ),
                    child: TextFormField(
                      // Password TextFormField
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Şifrenizi yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10 * fem),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ifrenizimiunuttunuz9Zo (214:1908)
              margin: EdgeInsets.fromLTRB(167 * fem, 0 * fem, 0 * fem, 255 * fem),
              child: Text(
                'Şifrenizi mi unuttunuz?',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 17 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3529411765 * ffem / fem,
                  letterSpacing: -0.17 * fem,
                  decoration: TextDecoration.underline,
                  color: const Color(0xff6a788a),
                  decorationColor: const Color(0xff6a788a),
                ),
              ),
            ),
            Container(
              // frame37NBf (214:1913)
              margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(127 * fem, 20 * fem, 127 * fem, 20 * fem),
                  width: double.infinity,
                  height: 64 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18 * fem),
                  ),
                  child: SizedBox(
                    // frame36WSH (214:1914)
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // giriyapQ1s (214:1915)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                          child: Text(
                            'Giriş yap',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 17 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3529411765 * ffem / fem,
                              letterSpacing: -0.17 * fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        SizedBox(
                          // vuesaxlineararrowrightQAH (214:1916)
                          width: 24 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'assets/rapidsport/images/sagok.png',
                            width: 24 * fem,
                            height: 24 * fem,
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
    );
  }
}
