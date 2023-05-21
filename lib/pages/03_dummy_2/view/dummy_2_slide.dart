import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/generated/assets.gen.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/fade_animation.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title_and_photo_alt.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';

class DummySlideTwo extends StatelessWidget {
  const DummySlideTwo({super.key});

  @override
  Widget build(BuildContext context) => FadeAnimation(
        DecoratedBox(
          decoration: const BoxDecoration(
            gradient: FCGradients.backgroundPrimary,
          ),
          child: SlideTitleAndPhotoAlt(
            Assets.images.titleAndPhotoSlideAlt.titleAndPhotoImageAlt.image(
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            'Dummy',
            const ['Option 1', 'Option 2', 'Option 3'],
            itemListdotted: true,
            itemListtextAlign: TextAlign.start,
          ),
        ),
        100,
      );
}
