import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class DersBitimPuan extends StatelessWidget {
  const DersBitimPuan({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // dersonayju7 (202:2782)
        padding: EdgeInsets.fromLTRB(14*fem, 48*fem, 6.5*fem, 152*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // home19hw (202:2785)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 9*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/rapidsport/images/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // keyiflibirantrenmangeirdiinizi (202:2783)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 340*fem,
              ),
              child: Text(
                'KEYİFLİ BİR ANTRENMAN GEÇİRDİĞİNİZİ UMUYORUZ',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2857142857*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // antrenrnzpuanlayin4bw (202:2787)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 249*fem,
              ),
              child: Text(
                'ANTRENÖRÜNÜZÜ PUANLAYIN',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2857142857*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // group34132d2m (238:1102)
              margin: EdgeInsets.fromLTRB(39*fem, 0*fem, 23.5*fem, 13*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // star26h3 (202:2790)
                    width: 73*fem,
                    height: 73*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/yildizgri.png',
                      width: 73*fem,
                      height: 73*fem,
                    ),
                  ),
                  SizedBox(
                    // star3wxZ (202:2791)
                    width: 73*fem,
                    height: 73*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/yildizgri.png',
                      width: 73*fem,
                      height: 73*fem,
                    ),
                  ),
                  SizedBox(
                    // star4FCZ (202:2792)
                    width: 73*fem,
                    height: 73*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/yildizgri.png',
                      width: 73*fem,
                      height: 73*fem,
                    ),
                  ),
                  SizedBox(
                    // star5KTK (202:2793)
                    width: 73*fem,
                    height: 73*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/yildizgri.png',
                      width: 73*fem,
                      height: 73*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // dilersenizantrenrnziinyorumbir (202:2788)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 323*fem,
              ),
              child: Text(
                'DİLERSENİZ ANTRENÖRÜNÜZ İÇİN YORUM BIRAKABİLİRSİNİZ',
                textAlign: TextAlign.center,
                style: safeGoogleFont (
                  'Inter',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.8*ffem/fem,
                  letterSpacing: -0.4099999964*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame76mid (202:2794)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.5*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(13*fem, 14*fem, 13*fem, 14*fem),
              width: 348*fem,
              height: 186*fem,
              decoration: BoxDecoration (
                color: const Color(0xffeff2f5),
                borderRadius: BorderRadius.circular(14*fem),
              ),
              child: Text(
                'Yorumunuzu buraya yazabilirsiniz',
                style: safeGoogleFont (
                  'Arial',
                  fontSize: 17*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3529411765*ffem/fem,
                  letterSpacing: -0.17*fem,
                  color: const Color(0xffb3bfcb),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}