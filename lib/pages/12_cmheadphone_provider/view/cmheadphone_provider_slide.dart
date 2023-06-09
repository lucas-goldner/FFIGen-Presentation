import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/generated/assets.gen.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/slides/widgets/text/title.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';

class CMHeadphoneProviderSlide extends StatelessWidget {
  const CMHeadphoneProviderSlide({super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(
          gradient: FCGradients.backgroundPrimary,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              TextTitle(S.of(context).usingTheBindings),
              AnimatedPositioned(
                duration: const Duration(seconds: 1),
                child: Assets.images.custom.cmheadphoneProvider.image(
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      );
}
