import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmansure.dart';
import 'package:myapp/rapidsport/antrenmantur.dart';
import 'package:myapp/utils.dart';

class AntrenmanSiklik extends StatelessWidget {
  const AntrenmanSiklik({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmansiklikkvR (53:2446)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // haftadakagnantrenmanyapyorsunu (53:2447)
              left: 95.5*fem,
              top: 69*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 126*fem,
                  child: Text(
                    'Haftada kaç gün antrenman yapıyorsunuz?',
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
              ),
            ),
            Positioned(
              // frame37w7j (53:2448)
              left: 21*fem,
              top: 643*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanTur())
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
                        height: 1*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame38pKw (53:2451)
              left: 21*fem,
              top: 233*fem,
              child: Container(
                width: 348*fem,
                height: 62*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    '1-2 gün',
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
            ),
            Positioned(
              // frame37BJu (53:2454)
              left: 21*fem,
              top: 310.5*fem,
              child: Container(
                width: 348*fem,
                height: 63*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    '3-4 gün',
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
            ),
            Positioned(
              // frame37n3o (53:2457)
              left: 21*fem,
              top: 388.5*fem,
              child: Container(
                width: 348*fem,
                height: 63*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    '5-6 gün',
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
            ),
            Positioned(
              // vuesaxlineararrowleftLUd (53:2461)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSure())
                  );},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.asset(
                      'assets/rapidsport/images/geriok.png',
                      width: 36*fem,
                      height: 36*fem,
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