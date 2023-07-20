import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/antrenmanoneri.dart';
import 'package:myapp/rapidsport/fiyatlandirma.dart';
import 'package:myapp/utils.dart';

class AntrenmanProgramsiz extends StatelessWidget {
  const AntrenmanProgramsiz({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenmanprogramsizQ1b (53:2508)
        width: double.infinity,
        height: 844*fem,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // aktifantrenmanprogrampaketiniz (53:2509)
              left: 76*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 239*fem,
                  height: 126*fem,
                  child: Text(
                    'Aktif antrenman programı paketiniz bulunmamaktadır.',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 30*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4*ffem/fem,
                      decoration: TextDecoration.none,
                      letterSpacing: -1.5*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // delete1kt5 (53:2961)
              left: 156*fem,
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
              // dilersenizpaketsatnalaraksizin (53:2510)
              left: 57.5*fem,
              top: 288*fem,
              child: Align(
                child: SizedBox(
                  width: 278*fem,
                  height: 252*fem,
                  child: Text(
                    'Dilerseniz paket satın alarak \nsizin için hazırlanmış antrenman programına erişim sağlayabilirsiniz.',
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
              ),
            ),
            Positioned(
              // frame37KiD (53:2511)
              left: 23*fem,
              top: 626*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 68*fem,
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
                        decoration: TextDecoration.none,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame382m3 (53:2514)
              left: 23*fem,
              top: 553*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Fiyatlandirma())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 348*fem,
                  height: 66*fem,
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
                        decoration: TextDecoration.none,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vuesaxlineararrowleftZ8h (53:2518)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenmanOneri())
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