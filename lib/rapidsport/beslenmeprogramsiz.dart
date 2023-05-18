import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/beslenmekalori.dart';
import 'package:myapp/rapidsport/fiyatlandirma.dart';
import 'package:myapp/utils.dart';

class BeslenmeProgramsiz extends StatelessWidget {
  const BeslenmeProgramsiz({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // beslenmeprogramsizJNR (53:1737)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // aktifbeslenmeprogrampaketinizb (53:1738)
              left: 80*fem,
              top: 69*fem,
              child: Align(
                child: SizedBox(
                  width: 239*fem,
                  height: 126*fem,
                  child: Text(
                    'Aktif beslenme programı paketiniz bulunmamaktadır.',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 30*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4*ffem/fem,
                      letterSpacing: -1.5*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // dilersenizpaketsatnalarakihtiy (53:1798)
              left: 58*fem,
              top: 289*fem,
              child: Align(
                child: SizedBox(
                  width: 287*fem,
                  height: 210*fem,
                  child: Text(
                    'Dilerseniz paket satın alarak ihtiyaçlarınıza yönelik beslenme programına erişim sağlayabilirsiniz.',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 30*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4*ffem/fem,
                      letterSpacing: -1.5*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame37wbj (53:1739)
              left: 26*fem,
              top: 602*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
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
                      'Ana sayfaya geri dön',
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
              // frame383YH (53:1799)
              left: 28*fem,
              top: 523*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Fiyatlandirma())
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
                      'Paketleri görüntüle',
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
              // delete1aAq (53:2960)
              left: 163*fem,
              top: 202*fem,
              child: Align(
                child: SizedBox(
                  width: 78*fem,
                  height: 78*fem,
                  child: Image.asset(
                    'assets/rapidsport/images/kirmizicarpi.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // vuesaxlineararrowleftSiq (53:1754)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const BeslenmeKalori())
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