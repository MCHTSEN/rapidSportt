import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/rapidsport/girisyap.dart';
import 'package:myapp/utils.dart';

class AntrenorAyarlar extends StatelessWidget {
  const AntrenorAyarlar({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorayarlarZZX (214:2225)
        padding: EdgeInsets.fromLTRB(0*fem, 70*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupl27xxbf (JPuqNgFUKvjjuqMJiGL27X)
              margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 20*fem, 0*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // vuesaxlineararrowleftbPj (214:2256)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
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
                    // group34154cJq (238:1125)
                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                    width: 195*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupfybf6Uu (JPuqVg3pAUR5kWkiFyFYbf)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                          padding: EdgeInsets.fromLTRB(97*fem, 105*fem, 13*fem, 0*fem),
                          width: 129*fem,
                          decoration: const BoxDecoration (
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/rapidsport/images/ornekkullanici.png',
                              ),
                            ),
                          ),
                          child: Align(
                            // ellipse3se5 (214:2232)
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: double.infinity,
                              height: 19*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(9.5*fem),
                                  color: const Color(0xff57fa0a),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          // autogroupuiffANH (JPuqYqdCwuo2JCg7LeUiFF)
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // morganjamesgLd (214:2231)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 0*fem),
                                child: Text(
                                  'Morgan James',
                                  style: safeGoogleFont (
                                    'Inter',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                    height: 1.2125*ffem/fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // pencilg9d2a08ec16401gjw (214:2233)
                                width: 22*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/duzenleme.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // group34153nHB (238:1124)
              width: 366.04*fem,
              height: 517*fem,
              child: Stack(
                children: [
                  Positioned(
                    // profileTPK (214:2235)
                    left: 30*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 67*fem,
                        height: 20*fem,
                        child: Text(
                          'PROFILE',
                          style: safeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125*ffem/fem,
                            color: const Color(0xff000000),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupjwndpdB (JPur9KdkRtVdw82BXujwnD)
                    left: 16*fem,
                    top: 48*fem,
                    child: SizedBox(
                      width: 266*fem,
                      height: 47*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // usericon1506701tN9 (214:2236)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 3*fem),
                            width: 40*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/rapidsport/images/usericon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // doumtarihiic5 (214:2237)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 5*fem),
                            child: Text(
                              'Doğum Tarihi',
                              style: safeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Text(
                            // ynu (214:2238)
                            '05.02.1997',
                            style: safeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: const Color(0xff000000),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupbrbb6Mj (JPurMKHmHy5wNa9AUGBRBb)
                    left: 16*fem,
                    top: 120*fem,
                    child: SizedBox(
                      width: 299*fem,
                      height: 61*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // contact1XT3 (214:2239)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                            width: 61*fem,
                            height: 61*fem,
                            child: Image.asset(
                              'assets/rapidsport/images/telefon.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // iletiimpS9 (214:2240)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 55*fem, 9*fem),
                            child: Text(
                              'İletişim',
                              style: safeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Container(
                            // TED (214:2241)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                            child: RichText(
                              text: TextSpan(
                                style: safeGoogleFont (
                                  'Inter',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                  decoration: TextDecoration.none,
                                ),
                                children: [
                                  const TextSpan(
                                    text: '+1',
                                  ),
                                  TextSpan(
                                    text: '169 916 9564',
                                    style: safeGoogleFont (
                                      'Inter',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2125*ffem/fem,
                                      color: const Color(0xff000000),
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupuvu3nSq (JPurVZZ2PPzX7Sixs8Uvu3)
                    left: 0*fem,
                    top: 199*fem,
                    child: SizedBox(
                      width: 340*fem,
                      height: 61*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouppttyrhb (JPurbj3RPMX31zg7BPpTty)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63*fem, 0*fem),
                            width: 126*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // email1kY5 (214:2242)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 98*fem,
                                      height: 61*fem,
                                      child: Image.asset(
                                        'assets/rapidsport/images/email.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // emailZkR (214:2243)
                                  left: 79*fem,
                                  top: 21*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 47*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Email ',
                                        style: safeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2125*ffem/fem,
                                          color: const Color(0xff000000),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // mjamesgmailcomMRP (214:2244)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: Text(
                              'mjames@gmail.com',
                              style: safeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: const Color(0xff000000),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // line1Xz5 (214:2245)
                    left: 14.9819335938*fem,
                    top: 28.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 346.04*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line2yLH (214:2246)
                    left: 20*fem,
                    top: 277*fem,
                    child: Align(
                      child: SizedBox(
                        width: 346.04*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line3yDo (214:2248)
                    left: 16*fem,
                    top: 446*fem,
                    child: Align(
                      child: SizedBox(
                        width: 346.04*fem,
                        height: 1*fem,
                        child: Container(
                          decoration: const BoxDecoration (
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group341162hs (238:1086)
                    left: 16*fem,
                    top: 286*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24*fem, 19*fem, 24*fem, 17*fem),
                      width: 346*fem,
                      height: 56*fem,
                      decoration: BoxDecoration (
                        color: const Color(0x660d9a57),
                        borderRadius: BorderRadius.circular(30*fem),
                      ),
                      child: Text(
                        'Profil Ayarları',
                        style: safeGoogleFont (
                          'Inter',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34117iDK (238:1087)
                    left: 16*fem,
                    top: 368*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24*fem, 22*fem, 24*fem, 14*fem),
                      width: 346*fem,
                      height: 56*fem,
                      decoration: BoxDecoration (
                        color: const Color(0x660d9a57),
                        borderRadius: BorderRadius.circular(30*fem),
                      ),
                      child: Text(
                        'Ödeme İşlemleri',
                        style: safeGoogleFont (
                          'Inter',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: const Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34181g3f (250:1083)
                    left: 30*fem,
                    top: 472*fem,
                    child: SizedBox(
                      width: 322.35*fem,
                      height: 45*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // logout16dB (214:2255)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: SizedBox(
                                width: 45*fem,
                                height: 45*fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/cikis.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // kiPf (214:2249)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 3*fem),
                            child: TextButton(
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const GirisYap())
                  );},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Çıkış',
                                style: safeGoogleFont (
                                  'Inter',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: const Color(0xff000000),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}