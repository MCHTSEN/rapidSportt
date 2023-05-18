import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/rapidsport/antrenorrezerveistek.dart';
import 'package:myapp/utils.dart';

class AntrenorRezerveDersler extends StatelessWidget {
  const AntrenorRezerveDersler({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorrezervedersleryYy (214:2262)
        padding: EdgeInsets.fromLTRB(10*fem, 15*fem,1*fem, 1*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // home18qB (214:2263)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.04*fem, 6*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAnasayfa())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 48*fem,
                  height: 42*fem,
                  child: Image.asset(
                    'assets/rapidsport/images/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // frame40ZQh (214:2264)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 5.04*fem, 22*fem),
              padding: EdgeInsets.fromLTRB(13.5*fem, 20*fem, 13.5*fem, 20*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0xff0d9a57),
                borderRadius: BorderRadius.circular(18*fem),
              ),
              child: Text(
                'REZERVASYONLARINIZ',
                style: safeGoogleFont (
                  'Aksara Bali Galang',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 0.9*ffem/fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupwjtrdqo (JPusT2xbP1jAGQHFhWWjtR)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.04*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 22*fem, 18*fem),
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ZeD (214:2273)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                    child: Text(
                      '13.05.2023',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // aZK (214:2274)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                    child: Text(
                      '20.00-21.00',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // tenis5W5 (214:2275)
                    'TENİS',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupae4vcF7 (JPusdn9gzD6DofDqnhaE4V)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.04*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 22*fem, 18*fem),
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // GqT (214:2277)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                    child: Text(
                      '09.05.2023',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // PQH (214:2278)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
                    child: Text(
                      '13.00-14.00',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // tenisHEm (214:2279)
                    'TENİS',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouplvxu2CM (JPusnh4WMJvGHqNFZvLvxu)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.04*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 22*fem, 18*fem),
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // WdK (214:2281)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                    child: Text(
                      '25.04.2023',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // dC9 (214:2282)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 32*fem, 0*fem),
                    child: Text(
                      '19.00-20.00',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // tenisxER (214:2283)
                    'TENİS',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupqr5s6bX (JPusvbzzJuN7f4AkGcQr5s)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.04*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 22*fem, 18*fem),
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // b2V (214:2285)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                    child: Text(
                      '12.06.2023',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // 6zq (214:2286)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                    child: Text(
                      '15.00-16.00',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // tenis7uw (214:2287)
                    'TENİS',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupumcqGXw (JPut4WwUGVoy2GyEyJUmCq)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 7.04*fem, 22*fem),
              padding: EdgeInsets.fromLTRB(29*fem, 18*fem, 22*fem, 18*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0x660d9a57),
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ki1 (214:2289)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    child: Text(
                      '04.05.2023',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // sXj (214:2290)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                    child: Text(
                      '11.00-12.00',
                      style: safeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // tenisyam (214:2291)
                    'TENİS',
                    style: safeGoogleFont (
                      'Inter',
                      fontSize: 16*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34182iHT (250:1085)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.04*fem, 0*fem),
              width: 346*fem,
              height: 56*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
              ),
              child: TextButton(
                // group36RxZ (214:2268)
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorRezerveIstek())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(25*fem, 18*fem, 22*fem, 18*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(30*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rezervasyonistekleriuMw (214:2270)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 121*fem, 0*fem),
                        child: Text(
                          'Rezervasyon İstekleri',
                          style: safeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      Text(
                        // c1T (214:2271)
                        '1',
                        style: safeGoogleFont (
                          'Inter',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
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