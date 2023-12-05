import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/features/find_trainer/find_trainer_view.dart';
import 'package:myapp/rapidsport/antrenmanprogrami.dart';
import 'package:myapp/rapidsport/ayarlarkullanici.dart';
import 'package:myapp/rapidsport/dersrezerveet.dart';
import 'package:myapp/rapidsport/beslenmeprogrami.dart';
import 'package:myapp/rapidsport/yakindakiantrenorlerigor.dart';
import 'package:myapp/utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final List<Reservation> reservations = [
      Reservation("Fitness", "14:00", "Maslak Spor Merkezi", 'Serpil Akdas'),
      Reservation("Yoga", "16:30", "Central Yoga Studio", 'Tolga Can'),
      Reservation("Swimming", "10:00", "City Pool Center", 'Sami Yavuz'),
      Reservation("Cycling", "18:15", "Outdoor Park", 'Ipek Peker'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoş geldin, Mücahit'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://placekitten.com/200/200'),
            ),
          )
        ],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _ReservationsText(context),
              _ReservationsCard(reservations),
              const Divider(),
              _emptyBox(),
              _HomeListTile(
                imagePath: 'assets/rapidsport/images/mapiki.png',
                title: 'Yakınındaki Antrenörleri Gör',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FindTrainerView()));
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
                          builder: (context) => const AntrenmanProgrami()));
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
                          builder: (context) => const BeslenmeProgrami()));
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
                          builder: (context) => const AyarlarKullanici()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 25,
      );

  SizedBox _ReservationsCard(List<Reservation> reservations) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        dragStartBehavior: DragStartBehavior.start,
        itemBuilder: (context, index) {
          return ReservationCard(reservation: reservations[index]);
        },
      ),
    );
  }

  Text _ReservationsText(BuildContext context) {
    return Text(
      'Aktif Rezervasyonlar',
      style: context.general.textTheme.bodyLarge,
    );
  }
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
  final Reservation reservation;

  const ReservationCard({super.key, required this.reservation});

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
            Text('Spor Salonu: ${reservation.table}'),
            const SizedBox(height: 8.0),
            Text('Eğitmen: ${reservation.trainer}'),
          ],
        ),
      ),
    );
  }
}
