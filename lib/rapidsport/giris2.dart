import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/anasayfa.dart';
import 'package:myapp/rapidsport/giris3.dart';
import 'package:myapp/utils.dart';

class Giris2 extends StatelessWidget {
  const Giris2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // giris2L3f (214:2140)
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Giris3())
                  );},
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
                // atlaJeh (250:1099)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 94*fem),
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
                // KZo (214:2158)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 50*fem),
                width: 258*fem,
                height: 227*fem,
                child: Image.asset(
                  'assets/rapidsport/images/giris2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // group34156JAq (250:1036)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                width: 315*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // yerkstlamanzyokZsT (214:2152)
                      margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 0*fem, 13*fem),
                      child: Text(
                        'Yer kısıtlamanız yok',
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
                      // rapidsportilebelirlibiryerebal (214:2153)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                      constraints: BoxConstraints (
                        maxWidth: 315*fem,
                      ),
                      child: Text(
                        'Rapid Sport ile belirli bir yere bağlı kalmadan ister parkta ister en yakın spor alanında istediğiniz yerde antrenmanınızı yapın',
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
                      // sliderWZj (214:2154)
                      margin: EdgeInsets.fromLTRB(130*fem, 0*fem, 129*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse8Q9K (214:2156)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4*fem),
                              color: const Color(0xffc7c7cc),
                            ),
                          ),
                          Container(
                            // ellipse7ohF (214:2155)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 8*fem,
                            height: 8*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(4*fem),
                              color: const Color(0xff0d9a57),
                            ),
                          ),
                          Container(
                            // ellipse96RT (214:2157)
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