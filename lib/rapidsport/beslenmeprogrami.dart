import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/beslenmehedef.dart';
import 'package:myapp/utils.dart';

class BeslenmeProgrami extends StatelessWidget {
  const BeslenmeProgrami({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmeprogramiux1 (53:1231)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // vuesaxlineararrowleftRos (53:1271)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
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
              // sizezelprogramoluturabilmemizi (53:1232)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 37*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 316*fem,
              ),
              child: Text(
                'Size özel program oluşturabilmemiz için soruları size en uygun olacak şekilde cevaplayın.',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  decoration: TextDecoration.none,
                  letterSpacing: -1.4*fem,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // cinsiyetinizirenmeklebalayalm4 (53:1320)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 45*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 283*fem,
              ),
              child: Text(
                'Cinsiyetinizi öğrenmekle başlayalım',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  letterSpacing: -1.4*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame37ftZ (53:1321)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeHedef())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 58*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'KADIN',
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
            TextButton(
              // frame379BT (53:1324)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeHedef())
                  );},
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 58*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'ERKEK',
                    style: safeGoogleFont (
                      'Aksara Bali Galang',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1*ffem/fem,
                      decoration: TextDecoration.none,
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