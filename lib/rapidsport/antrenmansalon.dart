import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenmanoneri.dart';
import 'package:myapp/rapidsport/antrenmantur.dart';
import 'package:myapp/utils.dart';

class AntrenmanSalon extends StatelessWidget {
  const AntrenmanSalon({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmansalonvJ9 (53:2877)
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
              // vuesaxlineararrowleftNA9 (53:2892)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 101*fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanTur())
                  );
                },
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
              // sporsalonunagidiyormusunuzw6m (53:2878)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 500*fem,
              ),
              child: Text(
                'Spor salonuna gidiyor musunuz?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1666666667*ffem/fem,
                  letterSpacing: -1.8*fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame38L8u (53:2936)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.5*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanOneri())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 65*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'EVET',
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
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanOneri())
                  );
              },
              child: Container(
                // frame37axM (53:2879)
                width: double.infinity,
                height: 66*fem,
                decoration: BoxDecoration (
                  color: const Color(0xff0d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: Center(
                  child: Text(
                    'HAYIR',
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
          ],
        ),
      ),
          );
  }
}