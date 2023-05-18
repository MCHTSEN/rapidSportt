import 'package:flutter/material.dart';
import 'package:myapp/rapidsport/fiyatlandirma.dart';
import 'package:myapp/rapidsport/odemebasari.dart';
import 'package:myapp/utils.dart';

class OdemeYontemi extends StatelessWidget {
  const OdemeYontemi({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // odemeyontemiQQd (34:2277)
        width: double.infinity,
        height: 812*fem,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // sepetimdYH (34:2474)
              left: 36*fem,
              top: 79*fem,
              child: Align(
                child: SizedBox(
                  width: 59*fem,
                  height: 18*fem,
                  child: Text(
                    'SEPETİM',
                    style: safeGoogleFont (
                      'DM Sans',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2799998692*ffem/fem,
                      color: const Color(0xff0d9a57),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroup9mb3Eny (JPujxLHFN6uShjrzen9mB3)
              left: 35.9999997616*fem,
              top: 112*fem,
              child: SizedBox(
                width: 300*fem,
                height: 18*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // haftalkantrenmanprogramDeu (34:2242)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 0*fem),
                      child: Text(
                        '3 Haftalık Antrenman Programı',
                        style: safeGoogleFont (
                          'DM Sans',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2799998692*ffem/fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      // GNH (34:2475)
                      '100₺',
                      style: safeGoogleFont (
                        'DM Sans',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2799998692*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // dividerNRK (34:2249)
              left: 27*fem,
              top: 150*fem,
              child: Align(
                child: SizedBox(
                  width: 336*fem,
                  height: 0.9*fem,
                  child: Container(
                    decoration: const BoxDecoration (
                      color: Color(0xffebebeb),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupnvsjBtZ (JPuk4L7Fo9CbRTvV7xNVsj)
              left: 38.9999998212*fem,
              top: 168*fem,
              child: SizedBox(
                width: 299*fem,
                height: 29*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // toplamdeme4Bf (34:2262)
                      margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 136*fem, 0*fem),
                      child: Text(
                        'Toplam Ödeme',
                        style: safeGoogleFont (
                          'DM Sans',
                          fontSize: 17.9796390533*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1926279389*ffem/fem,
                          color: const Color(0xff0d9a57),
                        ),
                      ),
                    ),
                    Text(
                      // J61 (34:2511)
                      '100₺',
                      style: safeGoogleFont (
                        'DM Sans',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2799998692*ffem/fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // button96d (34:2218)
              left: 25*fem,
              top: 706*fem,
              child: TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const OdemeBasari())
                  );},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(115.5*fem, 14*fem, 106*fem, 14*fem),
                  width: 335.59*fem,
                  height: 52.59*fem,
                  decoration: BoxDecoration (
                    color: const Color(0xff0d9a57),
                    borderRadius: BorderRadius.circular(20*fem),
                  ),
                  child: Container(
                    // textkMK (34:2219)
                    padding: EdgeInsets.fromLTRB(0*fem, 3.79*fem, 5.12*fem, 3.79*fem),
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // textzWZ (34:2220)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34.62*fem, 0*fem),
                            child: Text(
                              'Onayla',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont (
                                'DM Sans',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 0.9106354184*ffem/fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // iconRrm (34:2221)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          width: 14.34*fem,
                          height: 14.34*fem,
                          child: Image.asset(
                            'assets/rapidsport/images/icon.png',
                            width: 14.34*fem,
                            height: 14.34*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // suggestedforyou5RX (34:2413)
              left: 20.9999980927*fem,
              top: 221*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(19.89*fem, 19.89*fem, 19.89*fem, 19.89*fem),
                width: 336.64*fem,
                height: 259.32*fem,
                decoration: BoxDecoration (
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // demeyntemlerip1j (34:2414)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.89*fem),
                      child: Text(
                        'Ödeme Yöntemleri',
                        style: safeGoogleFont (
                          'DM Sans',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3025*ffem/fem,
                          color: const Color(0xff0d9a57),
                        ),
                      ),
                    ),
                    Container(
                      // paymentoptionemT (34:2415)
                      margin: EdgeInsets.fromLTRB(0.99*fem, 0*fem, 0*fem, 0*fem),
                      width: 295.87*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // card6NZ (34:2416)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.04*fem, 19.89*fem),
                            width: double.infinity,
                            height: 81.88*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // cardnameP6m (34:2417)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 126.3*fem, 0*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // bulletsnd (34:2418)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.99*fem, 11.93*fem, 0*fem),
                                        width: 11.93*fem,
                                        height: 11.93*fem,
                                        child: Image.asset(
                                          'assets/rapidsport/images/bullet.png',
                                          width: 11.93*fem,
                                          height: 11.93*fem,
                                        ),
                                      ),
                                      SizedBox(
                                        // cvvfiV (34:2422)
                                        width: 109*fem,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // cardnameMLR (34:2423)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.96*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // creditcardT8Z (34:2424)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.96*fem),
                                                    child: Text(
                                                      'Credit card',
                                                      style: safeGoogleFont (
                                                        'DM Sans',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3025*ffem/fem,
                                                        color: const Color(0xff0d9a57),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // KRf (34:2425)
                                                    '***** **** **** 5231',
                                                    style: safeGoogleFont (
                                                      'DM Sans',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3025*ffem/fem,
                                                      color: const Color(0x660d9a57),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // cvvz21 (34:2426)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.29*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(0*fem, 3.98*fem, 0.99*fem, 2.98*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: const Color(0x660d9a57)),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // cvvES9 (34:2427)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                                    child: Text(
                                                      'CVV',
                                                      style: safeGoogleFont (
                                                        'DM Sans',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3025*ffem/fem,
                                                        color: const Color(0x660d9a57),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // infoi6R (34:2428)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 10.07*fem, 0*fem, 0*fem),
                                                    width: 9.94*fem,
                                                    height: 9.94*fem,
                                                    child: Image.asset(
                                                      'assets/rapidsport/images/info.png',
                                                      width: 9.94*fem,
                                                      height: 9.94*fem,
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
                                SizedBox(
                                  // visainclogo1hDF (34:2429)
                                  width: 36.66*fem,
                                  height: 11.87*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/visainclogo-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            // cardBu7 (34:2430)
                            width: double.infinity,
                            height: 81.88*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // cardnameJTw (34:2431)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134*fem, 0*fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // bulletxHb (34:2432)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1.99*fem, 11.93*fem, 0*fem),
                                        width: 11.93*fem,
                                        height: 11.93*fem,
                                        child: Image.asset(
                                          'assets/rapidsport/images/bullet-CeH.png',
                                          width: 11.93*fem,
                                          height: 11.93*fem,
                                        ),
                                      ),
                                      SizedBox(
                                        // cvvp4u (34:2436)
                                        width: 113*fem,
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // cardnameKnM (34:2437)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.96*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // debitcardLxM (34:2438)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.96*fem),
                                                    child: Text(
                                                      'Debit card',
                                                      style: safeGoogleFont (
                                                        'DM Sans',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3025*ffem/fem,
                                                        color: const Color(0xff0d9a57),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // btH (34:2439)
                                                    '***** **** **** 4265',
                                                    style: safeGoogleFont (
                                                      'DM Sans',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.3025*ffem/fem,
                                                      color: const Color(0x660d9a57),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // cvviT7 (34:2440)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22.29*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(0*fem, 3.98*fem, 0.99*fem, 2.98*fem),
                                              width: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: const Color(0x660d9a57)),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // cvvLUV (34:2441)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                                                    child: Text(
                                                      'CVV',
                                                      style: safeGoogleFont (
                                                        'DM Sans',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.3025*ffem/fem,
                                                        color: const Color(0x660d9a57),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // infooN5 (34:2442)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 10.07*fem, 0*fem, 0*fem),
                                                    width: 9.94*fem,
                                                    height: 9.94*fem,
                                                    child: Image.asset(
                                                      'assets/rapidsport/images/info.png',
                                                      width: 9.94*fem,
                                                      height: 9.94*fem,
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
                                SizedBox(
                                  // mastercardlogo1TSd (34:2443)
                                  width: 25*fem,
                                  height: 19*fem,
                                  child: Image.asset(
                                    'assets/rapidsport/images/mastercard-logo-1.png',
                                    fit: BoxFit.cover,
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
            Positioned(
              // vuesaxlineararrowleftXBb (53:2962)
              left: 21*fem,
              top: 45*fem,
              child: Align(
                child: SizedBox(
                  width: 36*fem,
                  height: 36*fem,
                  child: TextButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Fiyatlandirma())
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