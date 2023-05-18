import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmansalon.dart';
import 'package:myapp/rapidsport/antrenmansiklik.dart';
import 'package:myapp/utils.dart';

class AntrenmanTur extends StatelessWidget {
  const AntrenmanTur({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmantur9Lq (53:2465)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // netrantrenmanlardanholanyorsun (53:2466)
              left: 85*fem,
              top: 63*fem,
              child: Align(
                child: SizedBox(
                  width: 221*fem,
                  height: 126*fem,
                  child: Text(
                    'Ne tür \nantrenmanlardan \nhoşlanıyorsunuz?',
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
              // frame37637 (53:2467)
              left: 21*fem,
              top: 643*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSalon())
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
              // frame38Qi1 (53:2470)
              left: 27*fem,
              top: 228*fem,
              child: Container(
                width: 348*fem,
                height: 62*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'Yürüyüş/ Koşu',
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
              // frame37Aah (53:2473)
              left: 27*fem,
              top: 306.5*fem,
              child: Container(
                width: 348*fem,
                height: 61*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'Fitness',
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
              // frame379Sd (53:2476)
              left: 27*fem,
              top: 384*fem,
              child: Container(
                width: 348*fem,
                height: 62*fem,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'Pilates',
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
              // vuesaxlineararrowleft7Gy (53:2483)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanSiklik())
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