// import 'package:flutter/material.dart';
// import 'package:myapp/rapidsport/anasayfa.dart';
// import 'package:myapp/rapidsport/yakinantonay.dart';
// import 'package:myapp/utils.dart';
// import 'package:myapp/widgets/osm.dart';
// import 'package:myapp/widgets/textarea.dart';

// class YakindakiAntrenorleriGor extends StatelessWidget {
//   const YakindakiAntrenorleriGor({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     Widget w;
//      w =Container(
      
//      );
     

//     return Stack(
//       children: [
//          Osm(children: Positioned(
//           top: 0,
//           left: 0,
//           right: 0,
//           child: w,
//         )),
//         Positioned(
//       top: 10,
//       left: 0,
//       right: 0,
//       child:
//              Container(
//         // yakindakiantrenorlerigorn6q (12:821)
//         width: double.infinity,
//         height: 812*fem,
        
//         child: SizedBox(
//           // group34134ow3 (238:1104)
//           width: double.infinity,
//           height: double.infinity,
//           child: Stack(
//             children: [
              
//               Positioned(
//                 // group34127BaD (238:1097)
//                 left: 0*fem,
//                 top: 0*fem,
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(10*fem, 1*fem, 1*fem, 1*fem),
//                   width: 375*fem,
//                   height: 812*fem,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         // vuesaxlineararrowleft2Kw (12:1222)
//                         margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 190*fem),
//                         child: TextButton(
//                           onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa())
//                   );},
//                           style: TextButton.styleFrom (
//                             padding: EdgeInsets.zero,
//                           ),
//                           child: SizedBox(
//                             width: 24*fem,
//                             height: 24*fem,
//                             child: Image.asset(
//                               'assets/rapidsport/images/geriok.png',
//                               width: 24*fem,
//                               height: 24*fem,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         // autogroupuadtJaH (JPuTQeBfirN2QtLoqVuAdT)
//                         margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
//                         padding: EdgeInsets.fromLTRB(15*fem, 14*fem, 9*fem, 27*fem),
//                         width: 331*fem,
//                         decoration: BoxDecoration (
//                           color: const Color(0xffffffff),
//                           borderRadius: BorderRadius.only (
//                             topLeft: Radius.circular(10*fem),
//                             topRight: Radius.circular(10*fem),
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0x14000000),
//                               offset: Offset(0*fem, -4*fem),
//                               blurRadius: 4*fem,
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Container(
//                               // group49ie1 (12:1197)
//                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
//                               child: TextButton(
//                                 onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const YakinAntOnay())
//                   );},
//                                 style: TextButton.styleFrom (
//                                   padding: EdgeInsets.zero,
//                                 ),
//                                 child: Container(
//                                   padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 10*fem, 3*fem),
//                                   width: double.infinity,
//                                   height: 62*fem,
//                                   decoration: BoxDecoration (
//                                     color: const Color(0xffffffff),
//                                     borderRadius: BorderRadius.circular(5*fem),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: const Color(0x14000000),
//                                         offset: Offset(0*fem, -4*fem),
//                                         blurRadius: 25*fem,
//                                       ),
//                                       BoxShadow(
//                                         color: const Color(0x3f000000),
//                                         offset: Offset(0*fem, 4*fem),
//                                         blurRadius: 2*fem,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         // autogroup248vfhf (JPuUZcG5snzsSpM84y248V)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 6*fem),
//                                         width: 40*fem,
//                                         height: 45*fem,
//                                         child: Image.asset(
//                                           'assets/rapidsport/images/avataryer.png',
//                                           width: 40*fem,
//                                           height: 45*fem,
//                                         ),
//                                       ),
//                                       Container(
//                                         // autogroupwqi9ZY9 (JPuUdre1MCNghsZG9iWQi9)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 52*fem, 9*fem),
//                                         width: 105*fem,
//                                         height: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               // juliecapozziello5mP (12:1193)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
//                                               width: double.infinity,
//                                               child: Text(
//                                                 'Julie Capozziello',
//                                                 textAlign: TextAlign.center,
//                                                 style: safeGoogleFont (
//                                                   'Inter',
//                                                   fontSize: 14*ffem,
//                                                   fontWeight: FontWeight.w400,
//                                                   height: 1.1428571429*ffem/fem,
//                                                   letterSpacing: -0.4099999964*fem,
//                                                   decoration: TextDecoration.none,
//                                                   color: const Color(0xff50555c),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               // image17VKK (12:1196)
//                                               width: 77*fem,
//                                               height: 15*fem,
//                                               child: Image.asset(
//                                                 'assets/rapidsport/images/besyildiz.png',
//                                                 fit: BoxFit.cover,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         // metreuzaklktaDm7 (12:1195)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 35*fem, 0*fem, 0*fem),
//                                         child: Text(
//                                           '30 metre uzaklıkta',
//                                           textAlign: TextAlign.center,
//                                           style: safeGoogleFont (
//                                             'Inter',
//                                             fontSize: 10*ffem,
//                                             fontWeight: FontWeight.w400,
//                                             decoration: TextDecoration.none,
//                                             height: 1.6*ffem/fem,
//                                             letterSpacing: -0.4099999964*fem,
//                                             color: const Color(0xff50555c),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: (){
                                
                  
//                               },
//                               child: Container(
//                                 // group34125u89 (238:1095)
//                                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
//                                 width: double.infinity,
//                                 height: 62*fem,
//                                 decoration: BoxDecoration (
//                                   color: const Color(0xffffffff),
//                                   borderRadius: BorderRadius.circular(5*fem),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: const Color(0x14000000),
//                                       offset: Offset(0*fem, -4*fem),
//                                       blurRadius: 25*fem,
//                                     ),
//                                     BoxShadow(
//                                       color: const Color(0x3f000000),
//                                       offset: Offset(0*fem, 4*fem),
//                                       blurRadius: 2*fem,
//                                     ),
//                                   ],
//                                 ),
//                                 child: Container(
//                                   // group50ydo (12:1198)
//                                   padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 7.5*fem, 3*fem),
//                                   width: double.infinity,
//                                   height: double.infinity,
//                                   decoration: BoxDecoration (
//                                     color: const Color(0xffffffff),
//                                     borderRadius: BorderRadius.circular(5*fem),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: const Color(0x14000000),
//                                         offset: Offset(0*fem, -4*fem),
//                                         blurRadius: 25*fem,
//                                       ),
//                                       BoxShadow(
//                                         color: const Color(0x3f000000),
//                                         offset: Offset(0*fem, 4*fem),
//                                         blurRadius: 2*fem,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         // autogroupjmhwpuK (JPuTkJHah9Z8SKRohujMhw)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 6*fem),
//                                         width: 40*fem,
//                                         height: 45*fem,
//                                         child: Image.asset(
//                                           'assets/rapidsport/images/avataryer.png',
//                                           width: 40*fem,
//                                           height: 45*fem,
//                                         ),
//                                       ),
//                                       Container(
//                                         // autogroup3jnhjWV (JPuTqiJE8yYW19sWiH3JNH)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 77.5*fem, 9*fem),
//                                         width: 77*fem,
//                                         height: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               // bretpattonTBb (12:1204)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                                               width: double.infinity,
//                                               child: Text(
//                                                 'Bret Patton',
//                                                 textAlign: TextAlign.center,
//                                                 style: safeGoogleFont (
//                                                   'Inter',
//                                                   fontSize: 14*ffem,
//                                                   fontWeight: FontWeight.w400,
//                                                   height: 1.1428571429*ffem/fem,
//                                                   decoration: TextDecoration.none,
//                                                   letterSpacing: -0.4099999964*fem,
//                                                   color: const Color(0xff50555c),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               // image17Kjb (12:1200)
//                                               width: 77*fem,
//                                               height: 15*fem,
//                                               child: Image.asset(
//                                                 'assets/rapidsport/images/besyildiz.png',
//                                                 fit: BoxFit.cover,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         // metreuzaklktaU6h (12:1205)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 35*fem, 0*fem, 0*fem),
//                                         child: Text(
//                                           '750 metre uzaklıkta',
//                                           textAlign: TextAlign.center,
//                                           style: safeGoogleFont (
//                                             'Inter',
//                                             fontSize: 10*ffem,
//                                             fontWeight: FontWeight.w400,
//                                             decoration: TextDecoration.none,
//                                             height: 1.6*ffem/fem,
//                                             letterSpacing: -0.4099999964*fem,
//                                             color: const Color(0xff50555c),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             GestureDetector(
//                               onTap: (){
//                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const YakindakiAntrenorleriGor())
//                   );
//                               },
//                               child: Container(
//                                 // group34126kK7 (238:1096)
//                                 width: double.infinity,
//                                 height: 62*fem,
//                                 decoration: BoxDecoration (
//                                   color: const Color(0xffffffff),
//                                   borderRadius: BorderRadius.circular(5*fem),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: const Color(0x14000000),
//                                       offset: Offset(0*fem, -4*fem),
//                                       blurRadius: 25*fem,
//                                     ),
//                                     BoxShadow(
//                                       color: const Color(0x3f000000),
//                                       offset: Offset(0*fem, 4*fem),
//                                       blurRadius: 2*fem,
//                                     ),
//                                   ],
//                                 ),
//                                 child: Container(
//                                   // group51TDX (12:1206)
//                                   padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 13.5*fem, 5*fem),
//                                   width: double.infinity,
//                                   height: double.infinity,
//                                   decoration: BoxDecoration (
//                                     color: const Color(0xffffffff),
//                                     borderRadius: BorderRadius.circular(5*fem),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: const Color(0x14000000),
//                                         offset: Offset(0*fem, -4*fem),
//                                         blurRadius: 25*fem,
//                                       ),
//                                       BoxShadow(
//                                         color: const Color(0x3f000000),
//                                         offset: Offset(0*fem, 4*fem),
//                                         blurRadius: 2*fem,
//                                       ),
//                                     ],
//                                   ),
//                                   child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         // autogroupdtrhXDP (JPuUB35MySGsewBCtWdtrH)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 4*fem),
//                                         width: 40*fem,
//                                         height: 45*fem,
//                                         child: Image.asset(
//                                           'assets/rapidsport/images/avataryer.png',
//                                           width: 40*fem,
//                                           height: 45*fem,
//                                         ),
//                                       ),
//                                       Container(
//                                         // autogroupq3dpDru (JPuUGHRcrM2t2wjG3nq3DP)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 69.5*fem, 7*fem),
//                                         width: 97*fem,
//                                         height: double.infinity,
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                               // dontrellbrittonujj (12:1212)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
//                                               width: double.infinity,
//                                               child: Text(
//                                                 'Dontrell Britton',
//                                                 textAlign: TextAlign.center,
//                                                 style: safeGoogleFont (
//                                                   'Inter',
//                                                   fontSize: 14*ffem,
//                                                   fontWeight: FontWeight.w400,
//                                                   height: 1.1428571429*ffem/fem,
//                                                   decoration: TextDecoration.none,
//                                                   letterSpacing: -0.4099999964*fem,
//                                                   color: const Color(0xff50555c),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               // image17oaD (12:1208)
//                                               width: 77*fem,
//                                               height: 15*fem,
//                                               child: Image.asset(
//                                                 'assets/rapidsport/images/besyildiz.png',
//                                                 fit: BoxFit.cover,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Container(
//                                         // kmuzaklkta9e5 (12:1213)
//                                         margin: EdgeInsets.fromLTRB(0*fem, 33*fem, 0*fem, 0*fem),
//                                         child: Text(
//                                           '1.5 km uzaklıkta',
//                                           textAlign: TextAlign.center,
//                                           style: safeGoogleFont (
//                                             'Inter',
//                                             fontSize: 10*ffem,
//                                             fontWeight: FontWeight.w400,
//                                             height: 1.6*ffem/fem,
//                                             decoration: TextDecoration.none,
//                                             letterSpacing: -0.4099999964*fem,
//                                             color: const Color(0xff50555c),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // bottoncircler2h (12:833)
//                 left: 311*fem,
//                 top: 462*fem,
//                 child: Align(
//                   child: SizedBox(
//                     width: 48*fem,
//                     height: 48*fem,
//                     child: Image.asset(
//                       'assets/rapidsport/images/botton-circle.png',
//                       width: 48*fem,
//                       height: 48*fem,
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 // zoomconrolwZw (12:836)
//                 left: 311*fem,
//                 top: 362*fem,
//                 child: Container(
//                   padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 15*fem, 22.17*fem),
//                   width: 48*fem,
//                   height: 88*fem,
//                   decoration: BoxDecoration (
//                     color: const Color(0xf4ffffff),
//                     borderRadius: BorderRadius.circular(8*fem),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x14000000),
//                         offset: Offset(0*fem, 4*fem),
//                         blurRadius: 4*fem,
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         // plusN9T (12:838)
//                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
//                         width: 18*fem,
//                         height: 18*fem,
//                         child: Image.asset(
//                           'assets/rapidsport/images/plus.png',
//                           width: 18*fem,
//                           height: 18*fem,
//                         ),
//                       ),
//                       SizedBox(
//                         // minus65T (12:839)
//                         width: 18*fem,
//                         height: 2.83*fem,
//                         child: Image.asset(
//                           'assets/rapidsport/images/minus.png',
//                           width: 18*fem,
//                           height: 2.83*fem,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
      
//     ),
//       ]
//     );
//   }
// }