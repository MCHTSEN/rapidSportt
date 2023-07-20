import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmanprogrami.dart';
import 'package:myapp/rapidsport/antrenmansiklik.dart';
import 'package:myapp/utils.dart';

class AntrenmanSure extends StatelessWidget {
  const AntrenmanSure({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmansureGA9 (53:2427)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // vuesaxlineararrowleftru3 (53:2442)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 315*fem, 48*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanProgrami())
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
              // nekadarzamandrsporlaurayorsunu (53:2428)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
              constraints: BoxConstraints (
                maxWidth: 278*fem,
              ),
              child: Text(
                'Ne kadar zamandır sporla uğraşıyorsunuz?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  height: 1.5*ffem/fem,
                  letterSpacing: -1.4*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame3824m (53:2552)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 15*fem),
              width: 348*fem,
              height: 64*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Yeni başlayacağım',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    decoration: TextDecoration.none,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame38VcZ (53:2432)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 12*fem),
              width: 348*fem,
              height: 66*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '2 aydan fazladır uğraşıyorum',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37xPf (53:2435)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 12.5*fem),
              width: 348*fem,
              height: 66*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '1 yıldır düzenli olarak uğraşıyorum',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    decoration: TextDecoration.none,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame377vm (53:2438)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 98.5*fem),
              width: 348*fem,
              height: 65*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  '2 yıldan fazladır uğraşıyorum',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame37jSM (53:2429)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSiklik())
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
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
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