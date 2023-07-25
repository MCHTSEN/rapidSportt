import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/beslenmefiziksel.dart';
import 'package:myapp/rapidsport/beslenmehedef.dart';
import 'package:myapp/utils.dart';

class BeslenmeBoyKilo extends StatelessWidget {
  const BeslenmeBoyKilo({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
     body: Container(
        // beslenmeboykilocz1 (53:1388)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // vuesaxlineararrowleft3pR (53:1400)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 313*fem, 20*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeHedef())
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
              // mevcutkilonkgnedirDsK (53:1389)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 28*fem),
              constraints: BoxConstraints (
                maxWidth: 246*fem,
              ),
              child: Text(
                'Mevcut kilon(kg) nedir?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  decoration: TextDecoration.none,
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667*ffem/fem,
                  letterSpacing: -1.8*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
                    // rectangle1157Jn9 (250:1213)
                    margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 13*fem, 34*fem),
                    padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 14*fem),
                    width: 348*fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffeff2f5),
                      borderRadius: BorderRadius.circular(14*fem),
                    ),
                    child: TextFormField(
                      // isim TextFormField
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Mevcut kilonuzu yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10 * fem),
                      ),
                    ),
                  ),
            // Container(
            //   // frame75BxZ (111:1904)
            //   margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 34*fem),
            //   padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 14*fem),
            //   width: 348*fem,
            //   decoration: BoxDecoration (
            //     color: const Color(0xffeff2f5),
            //     borderRadius: BorderRadius.circular(14*fem),
            //   ),
            //   child: Text(
            //     'Mevcut kilonuzu girin',
            //     style: safeGoogleFont (
            //       'Arial',
            //       fontSize: 17*ffem,
            //       fontWeight: FontWeight.w400,
            //       height: 1.3529411765*ffem/fem,
            //       letterSpacing: -0.17*fem,
            //       color: const Color(0xffb3bfcb),
            //       decoration: TextDecoration.none,
            //     ),
            //   ),
            // ),
            Container(
              // boyunkacm7zd (53:1446)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 0*fem, 35*fem),
              child: Text(
                'Boyun kaç (cm)?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667*ffem/fem,
                  decoration: TextDecoration.none,
                  letterSpacing: -1.8*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
                    // rectangle1157Jn9 (250:1213)
                    margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 13*fem, 34*fem),
                    padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 14*fem),
                    width: 348*fem,
                    decoration: BoxDecoration(
                      color: const Color(0xffeff2f5),
                      borderRadius: BorderRadius.circular(14*fem),
                    ),
                    child: TextFormField(
                      // isim TextFormField
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Boyunuzu yazın',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10 * fem),
                      ),
                    ),
                  ),
            // Container(
            //   // frame76Ai1 (53:1447)
            //   margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 182*fem),
            //   padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 14*fem),
            //   width: 348*fem,
            //   decoration: BoxDecoration (
            //     color: const Color(0xffeff2f5),
            //     borderRadius: BorderRadius.circular(14*fem),
            //   ),
            //   child: Text(
            //     'Boyunuzu girin',
            //     style: safeGoogleFont (
            //       'Arial',
            //       fontSize: 17*ffem,
            //       fontWeight: FontWeight.w400,
            //       height: 1.3529411765*ffem/fem,
            //       decoration: TextDecoration.none,
            //       letterSpacing: -0.17*fem,
            //       color: const Color(0xffb3bfcb),
            //     ),
            //   ),
            // ),
            Container(
              // frame373oj (53:1396)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeFiziksel())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 58*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Devam',
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
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}