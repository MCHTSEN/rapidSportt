import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/beslenmeogun.dart';
import 'package:myapp/rapidsport/beslenmeprogramsiz.dart';
import 'package:myapp/utils.dart';

class BeslenmeKalori extends StatelessWidget {
  const BeslenmeKalori({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmekaloriBsb (53:1659)
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
              // vuesaxlineararrowleftYbf (53:1677)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 311*fem, 76*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeOgun())
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
                    height: 1*fem,
                  ),
                ),
              ),
            ),
            Container(
              // gnlkalmangerekenkalorimiktarZF (53:1660)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 57*fem),
              constraints: BoxConstraints (
                maxWidth: 276*fem,
              ),
              child: Text(
                'Günlük alman gereken kalori miktarı',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  height: 1.4*ffem/fem,
                  letterSpacing: -1.5*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogrouprwmfhWV (JPuYJqMTxZVCqXe1i1rwmF)
              margin: EdgeInsets.fromLTRB(86*fem, 0*fem, 86*fem, 24*fem),
              width: double.infinity,
              height: 180*fem,
              decoration: const BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/rapidsport/images/kaloriarka.png',
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  '2200 kcal',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 40*ffem,
                    fontWeight: FontWeight.w400,
                    height: 0.45*ffem/fem,
                    color: const Color(0xff000000),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Container(
              // frame40U9s (53:1723)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 12*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Karbonhidrat: 140 gram',
                  style: safeGoogleFont (
                    'Arial',
                    fontSize: 18*ffem,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // frame41qed (53:1726)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 9.5*fem),
              width: 348*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Protein: 150 gram',
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
              // frame402DK (53:1729)
              margin: EdgeInsets.fromLTRB(5*fem, 0*fem, 0*fem, 44.5*fem),
              width: 348*fem,
              height: 63*fem,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Center(
                child: Text(
                  'Yağ: 32 gram',
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
              // frame37NwP (53:1661)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeProgramsiz())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 61*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Beslenme programını görüntüle',
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