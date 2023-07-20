import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/beslenmeboykilo.dart';
import 'package:myapp/rapidsport/beslenmeprogrami.dart';
import 'package:myapp/utils.dart';

class BeslenmeHedef extends StatelessWidget {
  const BeslenmeHedef({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmehedefmbT (53:1329)
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
              // vuesaxlineararrowleftb4h (53:1339)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 79*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeProgrami())
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
              // hedefinirenelim8D3 (53:1331)
              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 30*fem),
              width: double.infinity,
              child: Text(
                'Hedefini öğrenelim',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  decoration: TextDecoration.none,
                  letterSpacing: -1.4*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame388cM (53:1383)
              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 52*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeBoyKilo())
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
                      'KİLO VERMEK',
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
            ),
            Container(
              // frame37b8Z (53:1332)
              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 52*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeBoyKilo())
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
                      'KİLO ALMAK',
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
            TextButton(
              // frame377FK (53:1335)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeBoyKilo())
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
                    'KİLO KORUMA',
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
          ],
        ),
      ),
          );
  }
}