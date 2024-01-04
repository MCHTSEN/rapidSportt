import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/product/services/firebase_service.dart';
import 'package:myapp/providers/firebase_providers.dart';
import 'package:myapp/providers/home_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final _homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});

class ProfileTutor extends ConsumerStatefulWidget {
  const ProfileTutor({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileTutorState();
}

class _ProfileTutorState extends ConsumerState<ProfileTutor> {
  double rate = 0.0;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      _initializeRate();
      ref
          .read(_homeProvider.notifier)
          .fetchUsers(ref.watch(authProvider).currentUser!.uid);
    });
  }

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();

    rate = await ref
        .watch(firebaseServiceProvider)
        .getAverageRating(ref.watch(authProvider).currentUser!.uid);
  }

  Future<void> _initializeRate() async {
    rate = await ref
        .watch(firebaseServiceProvider)
        .getAverageRating(ref.watch(authProvider).currentUser!.uid);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(_homeProvider).user;

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100.w,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/rapidsport/images/avataryer.png'), // Profil fotoğrafı
          ),
          const SizedBox(height: 20),
          Text(
            user?.name ?? '', // Kullanıcının adı
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            user?.email ?? '', // Kullanıcının e-posta bilgisi
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            user?.birthDate ?? '', // Kullanıcının yaş bilgisi
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            'Brans: ${user?.branch ?? ''}', // Kullanıcının yaş bilgisi
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(
            'Iletisim: ${user?.phone ?? ''}', // Kullanıcının yaş bilgisi
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),
          const Text(
            'Egitmen Degerlendirmesi', // Kullanıcının yaş bilgisi
            style: TextStyle(fontSize: 16),
          ),
          rate == 0.0
              ? const SizedBox.shrink()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBarIndicator(
                      rating: rate,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 40.0,
                      direction: Axis.horizontal,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(rate.toStringAsFixed(2)),
                    )
                  ],
                ),
          const Spacer()
        ],
      ),
    );
  }
}
