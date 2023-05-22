import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/generated/assets.gen.dart';
import 'package:fluttercon_2023_presentation/presentation/widgets/directional_animation.dart';
import 'package:fluttercon_2023_presentation/slides/views/slide_title_and_photo.dart';
import 'package:fluttercon_2023_presentation/styles/fc_gradients.dart';
import 'package:fluttercon_2023_presentation/styles/transitions/page_directional_animations.dart';

class AgendaSlide extends StatelessWidget {
  const AgendaSlide({super.key});

  @override
  Widget build(BuildContext context) => DirectionalAnimation(
        DecoratedBox(
          decoration: const BoxDecoration(
            gradient: FCGradients.backgroundPrimary,
          ),
          child: SlideTitleAndPhoto(
            Assets.images.titleAndPhotoSlide.titleAndPhoto.image(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ),
        100,
        PageDirectionalAnimations.bottom,
        curve: Curves.easeInSine,
      );
}
