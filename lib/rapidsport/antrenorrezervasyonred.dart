import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/antrenoranasayfa.dart';
import 'package:myapp/utils.dart';

class AntrenorRezervasyonRed extends StatelessWidget {
  const AntrenorRezervasyonRed({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // antrenorrezervasyonred9Rw (214:2292)
        padding: EdgeInsets.fromLTRB(0*fem, 48*fem, 0*fem, 48*fem),
        width: double.infinity,
        height: 812*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SizedBox(
          // group34151TxR (238:1122)
          width: 383*fem,
          height: 483*fem,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                // home1CQD (214:2295)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.5*fem, 25*fem),
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
                // rezervasyonisteireddedilmitirH (214:2293)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                width: double.infinity,
                constraints: BoxConstraints (
                  maxWidth: 365*fem,
                ),
                child: Text(
                  'REZERVASYON İSTEĞİ REDDEDİLMİŞTİR.',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 34*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.4705882353*ffem/fem,
                    letterSpacing: -0.4099999964*fem,
                    color: const Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // delete1MAd (214:2296)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 110.5*fem, 25*fem),
                width: 155*fem,
                height: 157*fem,
                child: Image.asset(
                  'assets/rapidsport/images/kirmizicarpi.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // sonrakiantrenmanlargrmekizeres (214:2294)
                width: double.infinity,
                constraints: BoxConstraints (
                  maxWidth: 383*fem,
                ),
                child: Text(
                  'Sonraki antrenmanlar görüşmek izere',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont (
                    'Inter',
                    fontSize: 34*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.4705882353*ffem/fem,
                    letterSpacing: -0.4099999964*fem,
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