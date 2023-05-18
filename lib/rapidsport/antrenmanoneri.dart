import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmanprogramsiz.dart';
import 'package:myapp/utils.dart';

class AntrenmanOneri extends StatelessWidget {
  const AntrenmanOneri({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmanoneriGKX (53:2487)
        padding: EdgeInsets.fromLTRB(15*fem, 1*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // vuesaxlineararrowleftFhF (53:2504)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 76*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanOneri())
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
              // sizeplannerimizo6V (53:2488)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              width: double.infinity,
              child: Text(
                'Size plan önerimiz',
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
              // frame40pXP (53:2494)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 12*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '1.antrenman: Sırt ve biceps',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame41KcZ (53:2497)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 12*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '2.antrenman: Göğüs, omuz ve triceps ',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame408K7 (53:2500)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 325*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '3.antrenman: Kalça ve bacak ',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame37W4m (53:2489)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanProgramsiz())
                  );},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 348*fem,
                height: 60*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'Antrenman programını görüntüle',
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
          );
  }
}