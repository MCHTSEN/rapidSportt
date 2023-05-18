import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/antrenmansure.dart';
import 'package:myapp/utils.dart';

class AntrenmanProgrami extends StatelessWidget {
  const AntrenmanProgrami({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmanprogramiDU9 (53:2398)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              // vuesaxlineararrowleftrGD (53:2408)
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
            Container(
              // sizezelantrenmanprogramolutura (53:2399)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 316*fem,
              ),
              child: Text(
                'Size özel antrenman programı oluşturabilmemiz için soruları size en uygun olacak şekilde cevaplayın.',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  letterSpacing: -1.4*fem,
                  color: const Color(0xff292d32),
                ),
              ),
            ),
            Container(
              // cinsiyetinizirenmeklebalayalmB (53:2400)
              margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 0*fem, 20*fem),
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
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame37LsX (53:2401)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 13.5*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSure())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 65*fem,
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
                        height: 1*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // frame37cTf (53:2404)
              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSure())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 66*fem,
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