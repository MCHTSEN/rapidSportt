import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/dersonay.dart';
import 'package:myapp/rapidsport/yakindakiantrenorlerigor.dart';
import 'package:myapp/utils.dart';

class YakinAntOnay extends StatelessWidget {
  const YakinAntOnay({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // yakinantonayuLh (31:758)
        padding: EdgeInsets.fromLTRB(1*fem, 150*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // juliecapozzielloxpm (31:909)
              margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 32*fem),
              constraints: BoxConstraints (
                maxWidth: 240*fem,
              ),
              child: Text(
                'JULIE CAPOZZIELLO',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // ileantrenmannzonaylyormusunuzh (31:910)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 48*fem),
              constraints: BoxConstraints (
                maxWidth: 289*fem,
              ),
              child: Text(
                'ile antrenmanınızı onaylıyor musunuz?',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3888888889*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // group34129GMb (238:1099)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 39*fem),
              width: double.infinity,
              height: 67*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: TextButton(
                // frame377t1 (31:911)
                onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const DersOnay())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
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
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // group341287mX (238:1098)
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: TextButton(
                // frame37SJ1 (31:919)
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const YakindakiAntrenorleriGor())
                  );
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
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