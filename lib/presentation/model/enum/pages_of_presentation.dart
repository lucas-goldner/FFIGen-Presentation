import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/pages/01_title/view/title_slide.dart';
import 'package:fluttercon_2023_presentation/pages/02_dummy_1/view/dummy_1_slide.dart';
import 'package:fluttercon_2023_presentation/pages/03_dummy_2/view/dummy_2_slide.dart';

enum PagesOfPresentation {
  titleSlide(TitleSlide()),
  dummeOneSlide(DummySlideOne()),
  dummeTwoSlide(DummySlideTwo());

  const PagesOfPresentation(this.slide);

  final Widget slide;
}
