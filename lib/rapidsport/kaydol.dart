import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/rapidsport/giris1.dart';
import 'package:myapp/rapidsport/girisyap.dart';
import 'package:myapp/utils.dart';

class Kaydol extends StatelessWidget {
  const Kaydol({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        // kaydolC5s (214:1197)
        padding: EdgeInsets.fromLTRB(1*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup3vpbN8m (JPunzQtXGBUYzWBiF33VPB)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, 28*fem),
              width: 201*fem,
              height: 66*fem,
              child: Stack(
                children: [
                  Positioned(
                    // hogeldinizS8d (214:1216)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 200*fem,
                        height: 46*fem,
                        child: Text(
                          'Hoşgeldiniz!',
                          style: safeGoogleFont (
                            'Arial',
                            fontSize: 36*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2777777778*ffem/fem,
                            letterSpacing: -0.72*fem,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.none,
                            color: const Color(0xff292d32),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // giriyapnveyakaydolunwDo (214:1217)
                    left: 0*fem,
                    top: 43*fem,
                    child: Align(
                      child: SizedBox(
                        width: 201*fem,
                        height: 23*fem,
                        child: Text(
                          'Giriş yapın veya kaydolun',
                          style: safeGoogleFont (
                            'Arial',
                            fontSize: 17*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3529411765*ffem/fem,
                            decoration: TextDecoration.none,
                            letterSpacing: -0.17*fem,
                            color: const Color(0xff6a788a),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame74vbX (214:1198)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 24*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 13*fem, 10*fem),
              width: double.infinity,
              height: 63*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(230*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame103gUD (214:1199)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const GirisYap())
                  );
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 148*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(90*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Giriş yap',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Arial',
                              fontSize: 17*ffem,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              height: 1.3529411765*ffem/fem,
                              letterSpacing: -0.17*fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame102CL5 (214:1201)
                    width: 177*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0xff0d9a57),
                      borderRadius: BorderRadius.circular(90*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Kaydol',
                        textAlign: TextAlign.center,
                        style: safeGoogleFont (
                          'Arial',
                          fontSize: 17*ffem,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                          height: 1.3529411765*ffem/fem,
                          letterSpacing: -0.17*fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34187BC1 (250:1216)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 22*fem, 25*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // isim4Fo (214:1209)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 20*fem),
                    child: Text(
                      'Email',
                      style: safeGoogleFont (
                        'Arial',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3529411765*ffem/fem,
                        decoration: TextDecoration.none,
                        letterSpacing: -0.17*fem,
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
              // group34188Zrm (250:1217)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 22*fem, 27*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // telefonnumarasray (214:1210)
                    margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 19*fem),
                    child: Text(
                      'İsim soyisim',
                      style: safeGoogleFont (
                        'Arial',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3529411765*ffem/fem,
                        letterSpacing: -0.17*fem,
                        decoration: TextDecoration.none,
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
                      // isim TextFormField
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'İsminizi yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10 * fem),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34189wF3 (250:1218)
              margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 24*fem, 35*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // ifreoluturun2nH (214:1211)
                    margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 19*fem),
                    child: Text(
                      'Şifre oluşturun',
                      style: safeGoogleFont (
                        'Arial',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3529411765*ffem/fem,
                        letterSpacing: -0.17*fem,
                        decoration: TextDecoration.none,
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
              // kaydolmakistediinizkategoriyis (214:1215)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 12*fem),
              child: Text(
                'Kaydolmak istediğiniz kategoriyi seçin:',
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 17*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3529411765*ffem/fem,
                  letterSpacing: -0.17*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // group34113aqj (214:1203)
              margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 38*fem, 66*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(230*fem),
              ),
              child: Container(
                // frame75S7F (214:1204)
                padding: EdgeInsets.fromLTRB(10*fem, 3.5*fem, 13*fem, 3.5*fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(230*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame103THF (214:1205)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAnasayfa())
                  );
                        },
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 131*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(90*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Antrenör',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont (
                                'Arial',
                                fontSize: 17*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3529411765*ffem/fem,
                                decoration: TextDecoration.none,
                                letterSpacing: -0.17*fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // frame102y97 (214:1207)
                      margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 0*fem, 5*fem),
                      width: 137*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: const Color(0xff0d9a57),
                        borderRadius: BorderRadius.circular(90*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Kullanıcı',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont (
                            'Arial',
                            fontSize: 17*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3529411765*ffem/fem,
                            decoration: TextDecoration.none,
                            letterSpacing: -0.17*fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // frame37xFw (214:1218)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 0*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Giris1())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(132*fem, 20*fem, 132*fem, 20*fem),
                  width: 348*fem,
                  height: 64*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: SizedBox(
                    // frame36WRs (214:1219)
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // kaydol2f7 (214:1220)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                          child: Text(
                            'Kaydol',
                            style: safeGoogleFont (
                              'Aksara Bali Galang',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              height: 1*ffem/fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        SizedBox(
                          // vuesaxlineararrowright6Q5 (214:1221)
                          width: 24*fem,
                          height: 24*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/sagok.png',
                            width: 24*fem,
                            height: 24*fem,
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