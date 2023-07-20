import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/utils.dart';

class AntrenorRezervasyonOnay extends StatelessWidget {
  const AntrenorRezervasyonOnay({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorrezervasyononayYJ1 (214:2257)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem,1*fem, 1*fem),
        width: double.infinity,
        height: 812*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SizedBox(
          // group34152c2y (238:1123)
          width: double.infinity,
          height: 536*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // home1VcZ (214:2260)
                margin: EdgeInsets.fromLTRB(280*fem, 0*fem, 0*fem, 80*fem),
                child: TextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const AntrenorAnasayfa())
                  );},
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
                // rezervasyonunuzbaariylaoluturu (214:2258)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                constraints: BoxConstraints (
                  maxWidth: 335*fem,
                ),
                child: Text(
                  'REZERVASYONUNUZ BAŞARIYLA OLUŞTURULMUŞTUR.',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 33*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.4705882353*ffem/fem,
                    decoration: TextDecoration.none,
                    letterSpacing: -0.4099999964*fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // correct2f3B (214:2261)
                margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 20*fem),
                width: 123*fem,
                height: 123*fem,
                child: Image.asset(
                  'assets/rapidsport/images/yesiltik.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // iyiantrenmanlardilerizFn5 (214:2259)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                constraints: BoxConstraints (
                  maxWidth: 252*fem,
                ),
                child: Text(
                  'İyi antrenmanlar\n dileriz',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 34*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.4705882353*ffem/fem,
                    letterSpacing: -0.4099999964*fem,
                    decoration: TextDecoration.none,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}