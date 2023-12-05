import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindTrainerView extends ConsumerStatefulWidget {
  const FindTrainerView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FindTrainerViewState();
}

class _FindTrainerViewState extends ConsumerState<FindTrainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assets/rapidsport/images/map.png'),
        const Text('Yapim asamasinda')
      ],
    ));
  }
}
