import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/auth/authentication_view.dart';
import 'package:myapp/features/home/home_view.dart';
import 'package:myapp/providers/firebase_providers.dart';
import 'package:myapp/providers/home_provider.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/fiyatlandirma.dart';
import 'package:myapp/rapidsport/girisyap.dart';
import 'package:myapp/rapidsport/odemeyontemi.dart';
import 'package:myapp/utils.dart';

final _homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class AyarlarKullanici extends ConsumerStatefulWidget {
  const AyarlarKullanici({super.key});

  @override
  ConsumerState<AyarlarKullanici> createState() => _AyarlarKullaniciState();
}

class _AyarlarKullaniciState extends ConsumerState<AyarlarKullanici> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(_homeProvider.notifier)
          .fetchUsers(ref.watch(authProvider).currentUser!.uid);
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(_homeProvider).user;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // ayarlarkullaniciZBB (33:1131)
        padding: EdgeInsets.fromLTRB(10 * fem, 70 * fem, 1 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(30 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupqyukLbF (JPugQX2XAChdbb5JVGqYuK)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 1 * fem, 22 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // vuesaxlineararrowleftDYZ (53:3004)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 77 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeView()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 36 * fem,
                        height: 36 * fem,
                        child: Image.asset(
                          'assets/rapidsport/images/geriok.png',
                          width: 36 * fem,
                          height: 36 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group34191WAH (250:1343)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 5 * fem, 0 * fem, 0 * fem),
                    width: 200 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupu35pntV (JPugbGDcmQ4h8r1taTu35P)
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // ellipse25Mo (33:1137)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 19 * fem, 93 * fem, 0 * fem),
                                width: 70 * fem,
                                height: 70 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45 * fem),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/rapidsport/images/ornekKullanici.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                // pencilg9d2a08ec16401he5 (33:1141)
                                width: 15 * fem,
                                height: 21 * fem,
                                child: Image.asset(
                                  'assets/rapidsport/images/duzenleme.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          // morganjamesZRP (33:1138)
                          user?.name ?? '',
                          style: safeGoogleFont(
                            'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.none,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // profileqNu (33:1143)
              margin:
                  EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 8.5 * fem),
              child: Text(
                'PROFİL',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125 * ffem / fem,
                  decoration: TextDecoration.none,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // line1udf (33:1153)
              margin: EdgeInsets.fromLTRB(
                  2.98 * fem, 0 * fem, 5.02 * fem, 18.5 * fem),
              width: double.infinity,
              height: 1 * fem,
              decoration: const BoxDecoration(
                color: Color(0xff000000),
              ),
            ),
            Container(
              // autogroupcynq92D (JPugjWUsrpyGsibgyLCYnq)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 1 * fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // usericon15067012bo (33:1144)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 3 * fem),
                    width: 52 * fem,
                    height: 44 * fem,
                    child: Image.asset(
                      'assets/rapidsport/images/usericon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // doumtarihihxq (33:1145)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 16 * fem, 5 * fem),
                    child: Text(
                      'Doğum Tarihi',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        decoration: TextDecoration.none,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // W9b (33:1146)
                    user?.birthDate ?? '',
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupesdkkZj (JPuguWCDutoC5G2qkdESdK)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // contact1Ezh (33:1147)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 0 * fem),
                    width: 61 * fem,
                    height: 61 * fem,
                    child: Image.asset(
                      'assets/rapidsport/images/telefon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // iletiimV9w (33:1148)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 55 * fem, 9 * fem),
                    child: Text(
                      'İletişim',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        decoration: TextDecoration.none,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // LgM (33:1149)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
                    child: RichText(
                      text: TextSpan(
                        style: safeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: user?.phone ?? '',
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup19xjEx5 (JPuh4R73GzdEZSBFXr19Xj)
              margin:
                  EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 29.5 * fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // email1Gtm (33:1150)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0 * fem),
                    width: 59 * fem,
                    height: 37 * fem,
                    child: Image.asset(
                      'assets/rapidsport/images/email.png',
                    ),
                  ),
                  Container(
                    // emailwED (33:1151)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 1 * fem, 63 * fem, 0 * fem),
                    child: Text(
                      'Email ',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Container(
                    // mjamesgmailcomonD (33:1152)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      user?.email ?? '',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Fiyatlandirma()));
              },
              child: Container(
                // group34114pxD (238:1084)
                margin:
                    EdgeInsets.fromLTRB(3 * fem, 0 * fem, 5.04 * fem, 16 * fem),
                padding:
                    EdgeInsets.fromLTRB(24 * fem, 19 * fem, 24 * fem, 17 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Text(
                  'Paketlerim',
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    decoration: TextDecoration.none,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OdemeYontemi()));
              },
              child: Container(
                // group34115BwB (238:1085)
                margin:
                    EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4.04 * fem, 38 * fem),
                padding:
                    EdgeInsets.fromLTRB(24 * fem, 22 * fem, 24 * fem, 14 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x660d9a57),
                  borderRadius: BorderRadius.circular(30 * fem),
                ),
                child: Text(
                  'Ödeme Yöntemi',
                  style: safeGoogleFont(
                    'Inter',
                    decoration: TextDecoration.none,
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // line3uVo (33:1161)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 4 * fem, 1 * fem),
              width: double.infinity,
              height: 1 * fem,
              decoration: const BoxDecoration(
                color: Color(0xff000000),
              ),
            ),
            Container(
              // autogroupxhsmAgd (JPuhTuRuJQ7jsrkFsHXhSm)
              margin:
                  EdgeInsets.fromLTRB(16 * fem, 0 * fem, 15.69 * fem, 0 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // logout1ozV (34:2549)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AuthenticationView()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 45 * fem,
                        height: 45 * fem,
                        child: Image.asset(
                          'assets/rapidsport/images/cikis.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // kDHX (33:1162)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 191 * fem, 1 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AuthenticationView()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Çıkış',
                        style: safeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          decoration: TextDecoration.none,
                          color: const Color(0xff000000),
                        ),
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
