import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenormusaitbasla.dart';
import 'package:myapp/utils.dart';

class AntrenorMusait extends StatelessWidget {
  const AntrenorMusait({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenormusaituWV (214:2198)
        padding: EdgeInsets.fromLTRB(10*fem, 20*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // konumunuzyakndakikullanclarlap (214:2199)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 38*fem),
              constraints: BoxConstraints (
                maxWidth: 341*fem,
              ),
              child: Text(
                'Konumunuz yakındaki kullanıcılarla paylaşılıyor',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 25*ffem,
                  fontWeight: FontWeight.w400,
                  height: 2*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // group39JBF (214:2200)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 31*fem),
              width: double.infinity,
              height: 193*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Container(
                // frame38ADT (214:2201)
                padding: EdgeInsets.fromLTRB(77*fem, 12*fem, 87*fem, 12*fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(18*fem),
                ),
                child: SizedBox(
                  // group38cLM (214:2202)
                  width: double.infinity,
                  height: 150*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // jA5 (214:2204)
                        margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 0*fem),
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont (
                            'Inter',
                            fontSize: 50*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1*ffem/fem,
                            letterSpacing: -0.4099999964*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                      Center(
                        // dersisteinizbulunmaktadrbTB (214:2205)
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 184*fem,
                          ),
                          child: Text(
                            'Ders isteğiniz bulunmaktadır',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 28*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7857142857*ffem/fem,
                              letterSpacing: -0.4099999964*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // nGm (214:2206)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 3*fem),
              child: Text(
                '.....................',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 35*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.4285714286*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // sizinleantrenmanyapmakistiyorE (214:2207)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 31*fem),
              constraints: BoxConstraints (
                maxWidth: 287*fem,
              ),
              child: Text(
                'Sizinle antrenman yapmak istiyor',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 35*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.4285714286*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            TextButton(
              // frame38QBf (214:2208)
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorMusaitBasla())
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
                    'ONAYLA',
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