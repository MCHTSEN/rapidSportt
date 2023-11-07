import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';
import 'package:myapp/product/splash/splash_provider.dart';
import 'package:myapp/product/widgets/text/fade_text.dart';
// import 'package:myapp/rapidsport/anasayfa.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with SplashViewExtend {
  final splashProvider =
      StateNotifierProvider<SplashProvider, SplashState>((ref) {
    return SplashProvider();
  });
  @override
  void initState() {
    super.initState();

    ref.read(splashProvider.notifier).checkDeviceVersion(''.ext.version);
  }

  @override
  Widget build(BuildContext context) {
    checkDeviceVersionAndNavigate(splashProvider);
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeText(
              textFirst: 'Ephesus',
              textSecond: 'Ephesus',
              textThird: 'Ephesus News',
            ),
          ],
        ),
      ),
    );
  }
}

mixin SplashViewExtend on ConsumerState<SplashView> {
  void checkDeviceVersionAndNavigate(
    StateNotifierProvider<SplashProvider, SplashState> provider,
  ) {
    ref.listen(provider, (previous, next) {
      if (next.isForceUpdateRequired ?? false) {
        showAboutDialog(context: context);
      }
      if (next.isRedirectHome != null) {
        if (next.isRedirectHome!) {
          // context.navigateToPage(const Anasayfa());
        }
      }
    });
  }
}
