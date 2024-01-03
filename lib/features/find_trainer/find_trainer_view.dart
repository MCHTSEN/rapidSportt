import 'dart:async';
import 'dart:developer';

import 'package:booking_calendar/booking_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/features/booking/booking.dart';
import 'package:myapp/features/find_trainer/map_viewmodel.dart';
import 'package:myapp/features/home/home_view.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';
import 'package:myapp/providers/home_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final _homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class FindTrainerView extends ConsumerStatefulWidget {
  final UserModel? ogrenci;
  const FindTrainerView({required this.ogrenci, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MapSampleState();
}

class MapSampleState extends ConsumerState<FindTrainerView> {
  late final MapViewmodel _mapViewmodel;
  double rate = 0.0;
  final PageController _pageController = PageController(viewportFraction: 0.8);

  GoogleMapController? _controller;
  @override
  void initState() {
    super.initState();
    _initializeRate();
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    _mapViewmodel = MapViewmodel();
    final response = _mapViewmodel.fetchTutors();
    // inspect(response);
  }

  Future<void> _initializeRate() async {
    rate = await ref
        .watch(firebaseServiceProvider)
        .getAverageRating(ref.watch(authProvider).currentUser!.uid);
    setState(() {}); // setState çağırarak yeniden çizimi sağla
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Antrenor Arayin'),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeView()));
            },
            icon: const Icon(Icons.chevron_left)),
      ),
      backgroundColor: Colors.grey,
      body: Observer(builder: (_) {
        return _mapViewmodel.isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Stack(
                children: [
                  _googleMaps(),
                  Positioned(
                    bottom: 20,
                    height: 20.h,
                    width: 95.w,
                    child: PageView.builder(
                        controller: _pageController,
                        itemCount: _mapViewmodel.tutors.length,
                        onPageChanged: (index) {
                          _mapViewmodel.changeIndex(index);
                          _controller!.animateCamera(
                              CameraUpdate.newCameraPosition(CameraPosition(
                                  zoom: 14,
                                  target:
                                      _mapViewmodel.tutors[index].latlong)));
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  16.0), // Kenar yuvarlatma
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  _tutorInfos(index),
                                  _randevuAl(context, index)
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              );
      }),
    );
  }

  ElevatedButton _randevuAl(BuildContext context, int index) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => BookingCalendarDemoApp(
              tutor: _mapViewmodel.tutors[_mapViewmodel.selectedIndex],
              ogrenci: widget.ogrenci,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0), // Kenar yuvarlatma
          // Kenar rengi
        ),
      ),
      child: const Text(
        'Randevu Al',
        style: TextStyle(
          color: Colors.white, // Yazı rengi
          fontSize: 18.0,
        ),
      ),
    );
  }

  Future<dynamic> _bottomSheet(BuildContext context, int index) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 100.h,
            width: 100.w,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://picsum.photos/200',
                          height: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _mapViewmodel.tutors[index].name ?? '',
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _mapViewmodel.tutors[index].branch ?? '',
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          const Text('4.6'),
                          RatingBar.builder(
                            initialRating: 4.6,
                            minRating: 1,
                            itemSize: 20,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            ignoreGestures: true,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 10,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          // SizedBox(child: const BookingCalendarDemoApp(),height: 90.h,width: 100.w,)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Row _tutorInfos(int index) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            'https://picsum.photos/200',
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _mapViewmodel.tutors[index].name ?? '',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _mapViewmodel.tutors[index].branch ?? '',
                style: const TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        // _ratingBar()
      ],
    );
  }

  // Column _ratingBar() {
  //   return Column(
  //     children: [
  //       Text(rate.toStringAsFixed(2)),
  //       RatingBar.builder(
  //         initialRating: 4.6,
  //         minRating: 1,
  //         itemSize: 20,
  //         direction: Axis.horizontal,
  //         itemCount: 5,
  //         ignoreGestures: true,
  //         itemBuilder: (context, _) => const Icon(
  //           Icons.star,
  //           color: Colors.amber,
  //           size: 10,
  //         ),
  //         onRatingUpdate: (rating) {
  //           print(rating);
  //         },
  //       ),
  //     ],
  //   );
  // }

  GoogleMap _googleMaps() {
    return GoogleMap(
      onMapCreated: (controller) => _controller = controller,
      markers: Set.of(_mapViewmodel.tutors.map(
        (e) => Marker(
            icon: BitmapDescriptor.defaultMarkerWithHue(
                _mapViewmodel.tutors[_mapViewmodel.selectedIndex] == e
                    ? BitmapDescriptor.hueRed
                    : BitmapDescriptor.hueBlue),
            markerId: MarkerId('${e.lat}'),
            position: e.latlong),
      )),
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: _mapViewmodel.tutors.last.latlong,
        zoom: 14.4746,
      ),
    );
  }
}
