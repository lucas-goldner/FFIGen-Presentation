import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/presentation/provider/presentation_controller_provider.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PushupSlide extends HookConsumerWidget {
  const PushupSlide({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confettiControler =
        useState(ConfettiController(duration: const Duration(seconds: 10)));
    final index = ref.watch(presentationController).itemIndex;
    const pushups = 0;
    if (pushups == 10) {
      confettiControler.value.play();
    }

    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: FCGradients.backgroundPrimary,
      ),
      child: Stack(
        children: [
          SlideTitle(
            titleText: S.of(context).pushups(pushups),
          ),
          Center(
            child: ConfettiWidget(
              emissionFrequency: 1,
              confettiController: confettiControler.value,
              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ], //
            ),
          ),
        ],
      ),
    );
  }
}
