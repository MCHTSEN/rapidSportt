import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/dersrezerveet.dart';
import 'package:myapp/rapidsport/rezervasyononay.dart';
import 'package:myapp/utils.dart';

class RezervasyonOlusturma extends StatelessWidget {
  const RezervasyonOlusturma({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // rezervasyonolusturmaPW5 (32:1479)
        padding: EdgeInsets.fromLTRB(10*fem, 70*fem, 1*fem, 1*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(46*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // vuesaxlineararrowlefth9P (32:1541)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 312*fem, 18*fem),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DersRezerveEt())
                  );
                },
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
              // group34168si5 (250:1054)
              margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 93*fem, 40*fem),
              width: double.infinity,
              height: 71*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // group82Y3X (32:1593)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                    width: 68*fem,
                    height: 68*fem,
                    child: Image.asset(
                      'assets/rapidsport/images/egitmenikon.png',
                      width: 68*fem,
                      height: 68*fem,
                    ),
                  ),
                  Container(
                    // autogroupr1jj8nR (JPud4XmRFTrkk4WwR2r1jj)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.24*fem),
                    width: 146*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupda29xmT (JPud8cUx9x1CpHqRehDa29)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                          width: double.infinity,
                          height: 54*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // bretpatton2mK (32:1480)
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 146*fem,
                                    height: 42*fem,
                                    child: Text(
                                      'Bret Patton',
                                      style: safeGoogleFont (
                                        'Arial',
                                        fontSize: 30*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4*ffem/fem,
                                        decoration: TextDecoration.none,
                                        letterSpacing: -1.5*fem,
                                        color: const Color(0xff292d32),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // kartalAm3 (32:1590)
                                left: 18*fem,
                                top: 38*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 36*fem,
                                    height: 16*fem,
                                    child: Text(
                                      'KARTAL',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont (
                                        'Inter',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.6*ffem/fem,
                                        decoration: TextDecoration.none,
                                        letterSpacing: -0.4099999964*fem,
                                        color: const Color(0xff50555c),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // image179cy (32:1597)
                          width: 85.78*fem,
                          height: 14.76*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/besyildiz.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group34169bzm (250:1055)
              margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 97*fem, 4*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // heading6Rj (31:1257)
                    'Rezervasyon',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont (
                      'Poppins',
                      fontSize: 25*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.4*ffem/fem,
                      decoration: TextDecoration.none,
                      color: const Color(0xff303030),
                    ),
                  ),
                  Container(
                    // headingAgV (31:1254)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                    child: Text(
                      'Gün seçin:',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                        height: 1.4000000272*ffem/fem,
                        color: const Color(0xff303030),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   // autogroupcxffNXf (JPuasquWdW7TJ7kCGSCxff)
            //   margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 0*fem, 17*fem),
            //   width: 312*fem,
            //   height: 466*fem,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         // headingE45 (31:1255)
            //         left: 96*fem,
            //         top: 368*fem,
            //         child: Align(
            //           child: SizedBox(
            //             width: 76*fem,
            //             height: 20*fem,
            //             child: Text(
            //               'Saat seçin:',
            //               textAlign: TextAlign.center,
            //               style: safeGoogleFont (
            //                 'Poppins',
            //                 fontSize: 14*ffem,
            //                 fontWeight: FontWeight.w400,
            //                 height: 1.4000000272*ffem/fem,
            //                 color: const Color(0xff303030),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         // monthselectiona1T (31:1270)
            //         left: 6*fem,
            //         top: 390*fem,
            //         child: Container(
            //           padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
            //           width: 256*fem,
            //           height: 76*fem,
            //           decoration: BoxDecoration (
            //             color: const Color(0xffffffff),
            //             borderRadius: BorderRadius.circular(8*fem),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: const Color(0x21130a2e),
            //                 offset: Offset(0*fem, 1*fem),
            //                 blurRadius: 1.5*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x07130a2e),
            //                 offset: Offset(0*fem, 3*fem),
            //                 blurRadius: 7*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x11130a2e),
            //                 offset: Offset(0*fem, 8*fem),
            //                 blurRadius: 16*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x14130a2e),
            //                 offset: Offset(0*fem, 30*fem),
            //                 blurRadius: 42*fem,
            //               ),
            //             ],
            //           ),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               Container(
            //                 // menuitemnFw (31:1271)
            //                 width: double.infinity,
            //                 height: 32*fem,
            //                 decoration: const BoxDecoration (
            //                   color: Color(0x660d9a57),
            //                 ),
            //                 child: Center(
            //                   child: Text(
            //                     '9:00 - 11:00',
            //                     textAlign: TextAlign.center,
            //                     style: safeGoogleFont (
            //                       'Inter',
            //                       fontSize: 14*ffem,
            //                       fontWeight: FontWeight.w500,
            //                       height: 1.7142857143*ffem/fem,
            //                       color: const Color(0xff000000),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               Container(
            //                 // autogroupkdwupTX (JPub6647LxYoWoheyRKdWu)
            //                 padding: EdgeInsets.fromLTRB(84*fem, 4*fem, 84*fem, 0*fem),
            //                 width: double.infinity,
            //                 height: 36*fem,
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Container(
            //                       // menuitemtyB (31:1272)
            //                       margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 0*fem),
            //                       width: double.infinity,
            //                       height: 24*fem,
            //                       child: Center(
            //                         child: Text(
            //                           '11:00 - 13:00',
            //                           textAlign: TextAlign.center,
            //                           style: safeGoogleFont (
            //                             'Inter',
            //                             fontSize: 14*ffem,
            //                             fontWeight: FontWeight.w400,
            //                             height: 1.7142857143*ffem/fem,
            //                             color: const Color(0xff181819),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 8*fem,
            //                     ),
            //                     SizedBox(
            //                       // menuitemEvZ (31:1273)
            //                       width: double.infinity,
            //                       height: 24*fem,
            //                       child: Center(
            //                         child: Text(
            //                           '13:00 - 15:00',
            //                           textAlign: TextAlign.center,
            //                           style: safeGoogleFont (
            //                             'Inter',
            //                             fontSize: 14*ffem,
            //                             fontWeight: FontWeight.w400,
            //                             height: 1.7142857143*ffem/fem,
            //                             color: const Color(0xff181819),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 8*fem,
            //                     ),
            //                     Container(
            //                       // menuitemQiZ (31:1274)
            //                       margin: EdgeInsets.fromLTRB(0.5*fem, 0*fem, 0.5*fem, 0*fem),
            //                       width: double.infinity,
            //                       height: 24*fem,
            //                       child: Center(
            //                         child: Text(
            //                           '17:00 - 19:00',
            //                           textAlign: TextAlign.center,
            //                           style: safeGoogleFont (
            //                             'Inter',
            //                             fontSize: 14*ffem,
            //                             fontWeight: FontWeight.w400,
            //                             height: 1.7142857143*ffem/fem,
            //                             color: const Color(0xff181819),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 8*fem,
            //                     ),
            //                     SizedBox(
            //                       // menuitemcZj (31:1275)
            //                       width: double.infinity,
            //                       height: 24*fem,
            //                       child: Center(
            //                         child: Text(
            //                           '19:00 - 21:00',
            //                           textAlign: TextAlign.center,
            //                           style: safeGoogleFont (
            //                             'Inter',
            //                             fontSize: 14*ffem,
            //                             fontWeight: FontWeight.w400,
            //                             height: 1.7142857143*ffem/fem,
            //                             color: const Color(0xff181819),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         // calendarqSV (31:1285)
            //         left: 0*fem,
            //         top: 0*fem,
            //         child: Container(
            //           padding: EdgeInsets.fromLTRB(32*fem, 24*fem, 32*fem, 24*fem),
            //           width: 312*fem,
            //           height: 408*fem,
            //           decoration: BoxDecoration (
            //             color: const Color(0xffffffff),
            //             borderRadius: BorderRadius.circular(12*fem),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: const Color(0x21130a2e),
            //                 offset: Offset(0*fem, 1*fem),
            //                 blurRadius: 1.5*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x07130a2e),
            //                 offset: Offset(0*fem, 3*fem),
            //                 blurRadius: 7*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x11130a2e),
            //                 offset: Offset(0*fem, 8*fem),
            //                 blurRadius: 16*fem,
            //               ),
            //               BoxShadow(
            //                 color: const Color(0x14130a2e),
            //                 offset: Offset(0*fem, 30*fem),
            //                 blurRadius: 42*fem,
            //               ),
            //             ],
            //           ),
            //           child: SizedBox(
            //             // calendar613 (I31:1285;31:1147)
            //             width: 198*fem,
            //             height: 320*fem,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 Container(
            //                   // headerKPb (I31:1285;31:1148)
            //                   margin: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 0*fem),
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // selectCiH (I31:1285;31:1149)
            //                         padding: EdgeInsets.fromLTRB(16*fem, 8*fem, 8*fem, 8*fem),
            //                         width: 87*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0xfff8f7f9),
            //                           borderRadius: BorderRadius.circular(8*fem),
            //                         ),
            //                         child: Container(
            //                           // texttLD (I31:1285;31:1149;3:240)
            //                           padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.75*fem, 0*fem),
            //                           width: double.infinity,
            //                           height: double.infinity,
            //                           child: Row(
            //                             crossAxisAlignment: CrossAxisAlignment.center,
            //                             children: [
            //                               Container(
            //                                 // month7Ts (I31:1285;31:1149;3:241)
            //                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.75*fem, 0*fem),
            //                                 child: Text(
            //                                   'Nisan',
            //                                   style: safeGoogleFont (
            //                                     'Inter',
            //                                     fontSize: 14*ffem,
            //                                     fontWeight: FontWeight.w600,
            //                                     height: 1.7142857143*ffem/fem,
            //                                     color: const Color(0x660d9a57),
            //                                   ),
            //                                 ),
            //                               ),
            //                               SizedBox(
            //                                 // chevrondownAww (I31:1285;31:1149;3:242)
            //                                 width: 8.5*fem,
            //                                 height: 4.5*fem,
            //                                 child: Image.asset(
            //                                   'assets/rapidsport/images/chevron-down.png',
            //                                   width: 8.5*fem,
            //                                   height: 4.5*fem,
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // selectdKj (I31:1285;31:1150)
            //                         padding: EdgeInsets.fromLTRB(16*fem, 8*fem, 8*fem, 8*fem),
            //                         width: 84*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(8*fem),
            //                         ),
            //                         child: Container(
            //                           // textszm (I31:1285;31:1150;3:194)
            //                           padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.75*fem, 0*fem),
            //                           width: double.infinity,
            //                           height: double.infinity,
            //                           child: Row(
            //                             crossAxisAlignment: CrossAxisAlignment.center,
            //                             children: [
            //                               Container(
            //                                 // monthxmK (I31:1285;31:1150;3:195)
            //                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.75*fem, 0*fem),
            //                                 child: Text(
            //                                   '2023',
            //                                   style: safeGoogleFont (
            //                                     'Inter',
            //                                     fontSize: 14*ffem,
            //                                     fontWeight: FontWeight.w600,
            //                                     height: 1.7142857143*ffem/fem,
            //                                     color: const Color(0xff181819),
            //                                   ),
            //                                 ),
            //                               ),
            //                               Opacity(
            //                                 // chevrondownED3 (I31:1285;31:1150;3:196)
            //                                 opacity: 0.3,
            //                                 child: SizedBox(
            //                                   width: 8.5*fem,
            //                                   height: 4.5*fem,
            //                                   child: Image.asset(
            //                                     'assets/rapidsport/images/chevron-down-LDB.png',
            //                                     width: 8.5*fem,
            //                                     height: 4.5*fem,
            //                                   ),
            //                                 ),
            //                               ),
            //                             ],
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowrER (I31:1285;31:1151)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellst4d (I31:1285;31:1152)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Mo',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsnZK (I31:1285;31:1153)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Tu',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsXvD (I31:1285;31:1154)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'We',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cells6bw (I31:1285;31:1155)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Th',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsj97 (I31:1285;31:1156)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Fri',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellss8q (I31:1285;31:1157)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Sa',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsJE9 (I31:1285;31:1158)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             'Su',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w600,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowhXB (I31:1285;31:1159)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsyjb (I31:1285;31:1160)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '29',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsj6V (I31:1285;31:1161)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '30',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellswCZ (I31:1285;31:1162)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '31',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsicd (I31:1285;31:1163)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '1',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsZ7T (I31:1285;31:1164)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '2',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsWB7 (I31:1285;31:1165)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '3',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsWKX (I31:1285;31:1166)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '4',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowEPw (I31:1285;31:1167)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsXP3 (I31:1285;31:1168)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '5',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellssrD (I31:1285;31:1169)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '6',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsHuw (I31:1285;31:1170)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '7',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellse8D (I31:1285;31:1171)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '8',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsDKj (I31:1285;31:1172)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '9',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellskU5 (I31:1285;31:1173)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '10',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsmty (I31:1285;31:1174)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '11',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowmXb (I31:1285;31:1175)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsD8h (I31:1285;31:1176)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '12',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsQU5 (I31:1285;31:1177)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '13',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsBt9 (I31:1285;31:1178)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '14',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsPUR (I31:1285;31:1179)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '15',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellszj7 (I31:1285;31:1180)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '16',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellskrh (I31:1285;31:1181)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '17',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsbMX (I31:1285;31:1182)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '18',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowxLV (I31:1285;31:1183)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsSmT (I31:1285;31:1184)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '19',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsqYh (I31:1285;31:1185)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '20',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellseFF (I31:1285;31:1186)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '21',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsQtd (I31:1285;31:1187)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '22',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsSaR (I31:1285;31:1188)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '23',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellscNR (I31:1285;31:1189)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '24',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsQ3P (I31:1285;31:1190)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '25',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowbNm (I31:1285;31:1191)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsGzh (I31:1285;31:1192)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '26',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsUqs (I31:1285;31:1193)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x66c2c2c2),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '27',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xffa2a2a2),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellss7K (I31:1285;31:1194)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           color: const Color(0x660d9a57),
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '28',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsHB3 (I31:1285;31:1195)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '29',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cells6eH (I31:1285;31:1196)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '30',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cells8L5 (I31:1285;31:1197)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '1',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsuEM (I31:1285;31:1198)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '2',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   // rowwgq (I31:1285;31:1199)
            //                   width: double.infinity,
            //                   height: 40*fem,
            //                   child: Row(
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       Container(
            //                         // cellsbWV (I31:1285;31:1200)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '3',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cells2Lu (I31:1285;31:1201)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '4',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsLF7 (I31:1285;31:1202)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '5',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsav9 (I31:1285;31:1203)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '6',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsCRj (I31:1285;31:1204)
            //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '7',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsax5 (I31:1285;31:1205)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '8',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                       Container(
            //                         // cellsAfP (I31:1285;31:1206)
            //                         width: 28.29*fem,
            //                         height: double.infinity,
            //                         decoration: BoxDecoration (
            //                           borderRadius: BorderRadius.circular(40*fem),
            //                         ),
            //                         child: Center(
            //                           child: Text(
            //                             '9',
            //                             textAlign: TextAlign.center,
            //                             style: safeGoogleFont (
            //                               'Inter',
            //                               fontSize: 13*ffem,
            //                               fontWeight: FontWeight.w400,
            //                               height: 1.8461538462*ffem/fem,
            //                               color: const Color(0xff181819),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              // frame37oTT (53:3092)
              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 18*fem, 0*fem),
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const RezervasyonOnay())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 58*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(18*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Devam',
                      style: safeGoogleFont (
                        'Aksara Bali Galang',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                        height: 1*ffem/fem,
                        color: const Color(0xffffffff),
                      ),
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