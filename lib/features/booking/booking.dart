import 'dart:developer';

import 'package:booking_calendar/booking_calendar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/features/booking/booking_viewmodel.dart';
import 'package:myapp/product/models/sport_booking.dart';
import 'package:myapp/product/models/user_model.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';
import 'package:myapp/providers/home_provider.dart';

final _homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class BookingCalendarDemoApp extends ConsumerStatefulWidget {
  final UserModel tutor;
  final UserModel? ogrenci;
  const BookingCalendarDemoApp(
      {required this.ogrenci, Key? key, required this.tutor})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BookingCalendarDemoAppState();
}

class _BookingCalendarDemoAppState
    extends ConsumerState<BookingCalendarDemoApp> {
  bool isPaid = false;
  late final BookingViewmodel _bookingViewmodel;
  UserModel? userData;
  late final String? user;
  final now = DateTime.now();
  List<SportBooking> ogrenciBookings = [];
  late BookingService mockBookingService;

  @override
  void initState() {
    super.initState();
    user = ref.read(authProvider).currentUser!.uid;
    _initializeRate();
    mockBookingService = BookingService(
        // userId: user,
        // userName: user,
        serviceName: 'Mock Service',
        serviceDuration: 60,
        bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
        bookingStart: DateTime(now.year, now.month, now.day, 8, 0));

    _bookingViewmodel = BookingViewmodel();
    // DateTime.now().startOfDay
  }

  Future<void> _initializeRate() async {
    ogrenciBookings = await ref
        .watch(firebaseServiceProvider)
        .getBookings(ref.watch(authProvider).currentUser!.uid);
    setState(() {
      inspect(ogrenciBookings);
    });
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    userData = await getUserData(ref);
  }

  Future<UserModel> getUserData(WidgetRef ref) async {
    final response =
        await ref.watch(firebaseServiceProvider).getUserByUidFromFirebase(
              user ?? '',
            );
    return response;
  }

  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([DateTime(now.year, now.month, now.day, 15)]);
  }

  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    final response =
        await ref.watch(firebaseServiceProvider).getBookings(user ?? '');
    if (response.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              children: [
                const Text('Tebrikler! 🎉'),
                const Spacer(),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                )
              ],
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'İlk randevun ücretsiz! Spor yapmaya hazır mısın? 💪',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Başlayalım!')),
                  )
                ],
              ),
            ),
          );
        },
      );

      _bookingViewmodel.uploadBookingFirebase(
          newBooking: newBooking,
          tutorId: widget.tutor.uid ?? '',
          userId: widget.ogrenci?.uid ?? '');
      await Future.delayed(const Duration(seconds: 1));
      converted.add(DateTimeRange(
          start: newBooking.bookingStart, end: newBooking.bookingEnd));
      print('${newBooking.toJson()} has been uploaded');
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16.0),
                Text(
                  'Şu eğitmenden bir seanslık ders satın alıyorsunuz: ${widget.tutor.name ?? ''}',
                  style: context.general.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Toplam Tutar: ₺100.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Kart Numarası'),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Son Kullanma Tarihi'),
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'CVV'),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pop(); // BottomSheet'i kapat
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Ödeme Başarılı! 🎉'),
                          content: const Text(
                              'Ödemeniz başarıyla tamamlandı. Teşekkür ederiz! 🌟'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Tamam'),
                            ),
                          ],
                        );
                      },
                    );

                    _bookingViewmodel.uploadBookingFirebase(
                        newBooking: newBooking,
                        tutorId: widget.tutor.uid ?? '',
                        userId: widget.ogrenci?.uid ?? '');
                    await Future.delayed(const Duration(seconds: 1));
                    converted.add(DateTimeRange(
                        start: newBooking.bookingStart,
                        end: newBooking.bookingEnd));
                    print('${newBooking.toJson()} has been uploaded');
                    setState(() {});
                  },
                  child: const Text('Ödemeyi Tamamla'),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///take care this is only mock, so if you add today as disabledDays it will still be visible on the first load
    ///disabledDays will properly work with real data
    DateTime first = now;
    DateTime tomorrow = now.add(const Duration(days: 1));
    DateTime second = now.add(const Duration(minutes: 55));
    DateTime third = now.subtract(const Duration(minutes: 240));
    DateTime fourth = now.subtract(const Duration(minutes: 500));
    converted.add(
        DateTimeRange(start: first, end: now.add(const Duration(minutes: 30))));
    converted.add(DateTimeRange(
        start: second, end: second.add(const Duration(minutes: 23))));
    converted.add(DateTimeRange(
        start: third, end: third.add(const Duration(minutes: 15))));
    converted.add(DateTimeRange(
        start: fourth, end: fourth.add(const Duration(minutes: 50))));

    //book whole day example
    converted.add(DateTimeRange(
        start: DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 5, 0),
        end: DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 23, 0)));
    return converted;
  }

  List<DateTimeRange> generatePauseSlots() {
    return [
      DateTimeRange(
          start: DateTime(now.year, now.month, now.day, 12, 0),
          end: DateTime(now.year, now.month, now.day, 13, 0))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return (user == null && userData == null)
        ? const CircularProgressIndicator()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'Randevu aliyorsunuz; ${widget.tutor.name ?? ''}',
                style: context.general.textTheme.bodyLarge,
              ),
            ),
            body: Center(
              child: BookingCalendar(
                availableSlotText: 'Müsait',
                selectedSlotText: 'Seçili',
                bookedSlotText: 'Rezerve',
                bookingButtonText: 'Randevu Onayla',
                bookingService: BookingService(
                    userId: user,
                    userName: widget.ogrenci?.name ?? '',
                    serviceName: widget.tutor.name ?? '',
                    userEmail: widget.tutor.uid,
                    serviceDuration: 60,
                    bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
                    bookingStart: DateTime(now.year, now.month, now.day, 8, 0)),
                availableSlotColor: Colors.grey[300],
                convertStreamResultToDateTimeRanges: convertStreamResultMock,
                getBookingStream: getBookingStreamMock,
                uploadBooking: uploadBookingMock,
                pauseSlots: generatePauseSlots(),
                pauseSlotText: 'Öğle Arası',
                hideBreakTime: true,
                loadingWidget: const Text('Yükleniyor...'),
                uploadingWidget: const CircularProgressIndicator(),
                locale: 'tr_TR',
                startingDayOfWeek: StartingDayOfWeek.monday,
                wholeDayIsBookedWidget: const Text('Üzgünüz; tüm gün dolu.'),
                //disabledDates: [DateTime(2023, 1, 20)],
                //disabledDays: [6, 7],
              ),
            ),
          );
  }
}
