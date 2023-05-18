import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/giris2.dart';
import 'package:myapp/utils.dart';

class Giris1 extends StatelessWidget {
  const Giris1({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // giris1AXP (214:2137)
        onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Giris2()),
  );
},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(1*fem, 50*fem, 1*fem, 1*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(46*fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // atlaM65 (214:2150)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 94*fem),
                child: TextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
                  );},
                  style: TextButton.styleFrom (
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    'Atla',
                    style: safeGoogleFont (
                      'Arial',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2777777778*ffem/fem,
                      letterSpacing: -0.18*fem,
                      color: const Color(0xff0d9a57),
                    ),
                  ),
                ),
              ),
              Container(
                // VLh (214:2149)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                width: 351*fem,
                height: 238*fem,
                child: Image.asset(
                  'assets/rapidsport/images/giris1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // group34157PBB (250:1037)
                margin: EdgeInsets.fromLTRB(5.5*fem, 0*fem, 5.5*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // balaycsporsalonuyelikleriniunu (214:2143)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                      constraints: BoxConstraints (
                        maxWidth: 302*fem,
                      ),
                      child: Text(
                        'Bağlayıcı spor salonu üyeliklerini unutun',
                        textAlign: TextAlign.center,
                        style: safeGoogleFont (
                          'Arial',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2142857143*ffem/fem,
                          letterSpacing: 0.3600000143*fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // rapidsportileistediinizzamanki (214:2144)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
                      constraints: BoxConstraints (
                        maxWidth: 340*fem,
                      ),
                      child: Text(
                        'Rapid Sport ile istediğiniz zaman kişisel antrenörünüzle birlikte antrenmanınızı yapın',
                        textAlign: TextAlign.center,
                        style: safeGoogleFont (
                          'Arial',
                          fontSize: 17*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2941176471*ffem/fem,
                          letterSpacing: -0.4099999964*fem,
                          color: const Color(0x993c3c43),
                        ),
                      ),
                    ),
                    Container(
                      // slider4Tf (214:2145)
                      margin: EdgeInsets.fromLTRB(142.5*fem, 0*fem, 141.5*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse7x3F (214:2146)
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4*fem),
                              color: const Color(0xff0d9a57),
                            ),
                          ),
                          SizedBox(
                            width: 16*fem,
                          ),
                          Container(
                            // ellipse8d9P (214:2147)
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4*fem),
                              color: const Color(0xffc7c7cc),
                            ),
                          ),
                          SizedBox(
                            width: 16*fem,
                          ),
                          Container(
                            // ellipse9KH7 (214:2148)
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4*fem),
                              color: const Color(0xffc7c7cc),
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
      ),
          );
  }
}