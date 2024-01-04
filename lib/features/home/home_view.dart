import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/features/auth/authentication_view.dart';
import 'package:myapp/features/auth/sign_up_view.dart';
import 'package:myapp/features/find_trainer/find_trainer_view.dart';
import 'package:myapp/features/nitrution/nitrution_view.dart';
import 'package:myapp/features/profile/profile_tutor.dart';
import 'package:myapp/features/workout/workout_program.dart';
import 'package:myapp/product/enums/firebase_collection.dart';
import 'package:myapp/product/models/sport_booking.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/product/utilities/location_permission.dart';
import 'package:myapp/providers/auth_manager.dart';
import 'package:myapp/providers/current_user_prov.dart';
import 'package:myapp/providers/firebase_providers.dart';
import 'package:myapp/providers/home_provider.dart';
import 'package:myapp/rapidsport/antrenmanprogrami.dart';
import 'package:myapp/rapidsport/ayarlarkullanici.dart';
import 'package:myapp/rapidsport/dersrezerveet.dart';
import 'package:myapp/rapidsport/beslenmeprogrami.dart';
import 'package:myapp/rapidsport/yakindakiantrenorlerigor.dart';
import 'package:myapp/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../product/models/user_model.dart';

final _homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late final User? user;
  late final Future<List<SportBooking>>? tutorBookings;
  late final Future<UserModel> userData;

  double currentRating = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      /// Fetching users ////
      ref
          .read(_homeProvider.notifier)
          .fetchUsers(ref.watch(authProvider).currentUser!.uid);

      /// Fetching tutors bookings ////
      ref
          .read(firebaseServiceProvider)
          .getBookings(ref.watch(authProvider).currentUser!.uid);
    });
  }

  @override
  Future<void> didChangeDependencies() async {
    final curUser = ref.watch(authProvider).currentUser;
    userData = getUserData(ref);
    tutorBookings = await getTutorBookings(ref);

    final firebaseService = FirebaseService(
        firebaseFirestore: ref.read(firestoreProvider),
        firebaseAuth: ref.read(authProvider));

    final currentLocation = await LocationPermission().getLocation();

    firebaseService.updateUserLocation(currentLocation!.latitude.toString(),
        currentLocation.longitude.toString(), curUser!.uid);

    super.didChangeDependencies();
  }

  Future<UserModel> getUserData(WidgetRef ref) async {
    final response =
        await ref.watch(firebaseServiceProvider).getUserByUidFromFirebase(
              user?.uid ?? '',
            );
    return response;
  }

  getTutorBookings(WidgetRef ref) {
    final response = ref.watch(firebaseServiceProvider).getBookings(
          user?.uid ?? '',
        );
  }

  @override
  Widget build(BuildContext context) {
    final firebase = ref.watch(firebaseServiceProvider);
    final user = ref.watch(_homeProvider).user;

    return (user == null && ref.watch(firebaseServiceProvider).isLoading)
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AuthenticationView()));
                      },
                      icon: const Icon(Icons.exit_to_app))),
              title: Text(user?.name ?? ''),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => user?.type == 'Eğitmen'
                                    ? const ProfileTutor()
                                    : const AyarlarKullanici()));
                      },
                      icon: const CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://picsum.photos/200'),
                      ),
                    ))
              ],
              elevation: 2,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ReservationsText(context),
                    SizedBox(
                      height: 200,
                      child: firebase.tutorsBooking.isEmpty
                          ? const Center(
                              child: Text('Aktif Rezervasyonunuz yok'))
                          : PageView.builder(
                              itemCount: firebase.tutorsBooking.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  margin: const EdgeInsets.all(16.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          user?.branch ?? '',
                                          style: const TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 8.0),
                                        Text(
                                          'Zaman: ${firebase.tutorsBooking[index].bookingEnd}'
                                              .replaceAll(
                                                  RegExp('.{0,7}\$'), ''),
                                          style: context
                                              .general.textTheme.bodyLarge,
                                        ),
                                        const SizedBox(height: 8.0),
                                        user?.type == 'Eğitmen'
                                            //////  EGITMEN EKRANI ///////
                                            ? Text(
                                                'Ogrenci: ${firebase.tutorsBooking[index].userName}',
                                                style: context.general.textTheme
                                                    .bodyLarge,
                                              )

                                            //////  OGRENCI EKRANI ///////
                                            : Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      'Egitmen: ${firebase.tutorsBooking[index].serviceName}'),
                                                  Row(
                                                    children: [
                                                      const Spacer(),
                                                      ElevatedButton(
                                                          onPressed: () {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext
                                                                      context) {
                                                                return AlertDialog(
                                                                  title: Row(
                                                                    children: [
                                                                      const Text(
                                                                          'Eğitmeni Değerlendir'),
                                                                      Expanded(
                                                                        child: IconButton(
                                                                            onPressed: () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            icon: const Icon(Icons.close)),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  content:
                                                                      SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.9,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        RatingBar
                                                                            .builder(
                                                                          initialRating:
                                                                              3,
                                                                          minRating:
                                                                              1,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          allowHalfRating:
                                                                              true,
                                                                          itemCount:
                                                                              5,
                                                                          itemPadding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal: 4.0),
                                                                          itemBuilder: (context, _) =>
                                                                              const Icon(
                                                                            Icons.star,
                                                                            color:
                                                                                Colors.amber,
                                                                          ),
                                                                          onRatingUpdate:
                                                                              (rating) {
                                                                            currentRating =
                                                                                rating;
                                                                            print(currentRating);
                                                                          },
                                                                        ),
                                                                        const Padding(
                                                                          padding:
                                                                              EdgeInsets.all(8.0),
                                                                          child:
                                                                              Text(
                                                                            'Eğitmeni değerlendirmek diğer kullanıcıların fikir edinmesine yardımcı olur.',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                          ),
                                                                        ),
                                                                        ElevatedButton(
                                                                            onPressed:
                                                                                () async {
                                                                              final response = await ref.watch(firebaseServiceProvider).saveTutorRating(rate: currentRating, uid: firebase.tutorsBooking[index].userEmail ?? '');

                                                                              showModalBottomSheet(
                                                                                  context: context,
                                                                                  builder: (BuildContext context) => SizedBox(
                                                                                      height: 10.h,
                                                                                      width: 100.w,
                                                                                      child: Center(
                                                                                          child: Text(
                                                                                        'Basarili',
                                                                                        style: context.general.textTheme.bodyLarge,
                                                                                      ))));
                                                                              Future.delayed(const Duration(seconds: 1), () {
                                                                                Navigator.pop(context);
                                                                              });
                                                                            },
                                                                            child:
                                                                                const Text('Değerlendir'))
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          style: const ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStatePropertyAll(
                                                                      Colors
                                                                          .green)),
                                                          child: const Text(
                                                            'Ders Bitti',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                    ],
                                                  )
                                                ],
                                              )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
                    const Divider(),
                    _emptyBox(),
                    if (user?.type == 'Öğrenci')
                      _HomeListTile(
                        imagePath: 'assets/rapidsport/images/mapiki.png',
                        title: 'Yakınındaki Antrenörleri Gör',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindTrainerView(
                                        ogrenci: user,
                                      )));
                        },
                      ),
                    _emptyBox(),
                    _HomeListTile(
                      imagePath: 'assets/rapidsport/images/weightlifting.png',
                      title: 'Antrenman Programı',
                      fit: BoxFit.contain,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const WorkoutSurveyPage()));
                      },
                    ),
                    _emptyBox(),
                    _HomeListTile(
                      imagePath: 'assets/rapidsport/images/giris3.png',
                      title: 'Beslenme Programı',
                      fit: BoxFit.contain,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NitrutionView()));
                      },
                    ),
                    _emptyBox(),
                    _HomeListTile(
                      imagePath: 'assets/rapidsport/images/settings.png',
                      title: 'Ayarlar',
                      fit: BoxFit.contain,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AyarlarKullanici()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  SizedBox emptyBox() => const SizedBox(
        height: 25,
      );

  Text ReservationsText(BuildContext context) {
    return Text(
      'Aktif Rezervasyonlar',
      style: context.general.textTheme.bodyLarge,
    );
  }
}

SizedBox _emptyBox() => const SizedBox(
      height: 25,
    );

Text _ReservationsText(BuildContext context) {
  return Text(
    'Aktif Rezervasyonlar',
    style: context.general.textTheme.headlineLarge,
  );
}

class _HomeListTile extends StatelessWidget {
  const _HomeListTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    this.fit,
  });
  final String imagePath;
  final String title;
  final Function()? onTap;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: const Icon(Icons.chevron_right),
      leading: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: fit ?? BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: context.general.textTheme.labelLarge,
      ),
    );
  }
}

class Reservation {
  final String title;
  final String time;
  final String table;
  final String trainer;

  Reservation(this.title, this.time, this.table, this.trainer);
}

class ReservationCard extends StatelessWidget {
  final bool isTrainer;
  final Reservation reservation;

  const ReservationCard(
      {super.key, required this.reservation, required this.isTrainer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              reservation.title,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text('Zaman: ${reservation.time}'),
            const SizedBox(height: 8.0),
            isTrainer
                ? Text('Ogrenci: ${reservation.trainer}')
                : Text('Eğitmen: ${reservation.trainer}'),
          ],
        ),
      ),
    );
  }
}
