import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/pages/01_title/view/title_slide.dart';
import 'package:fluttercon_2023_presentation/pages/02_agenda/view/agenda_slide.dart';
import 'package:fluttercon_2023_presentation/pages/03_motivation/view/motivation.dart';
import 'package:fluttercon_2023_presentation/pages/04_pushups/view/pushup_slide.dart';
import 'package:fluttercon_2023_presentation/pages/05_solution/view/solution_slide.dart';

enum PagesOfPresentation {
  titleSlide(TitleSlide(), 1),
  agendaSlide(
    AgendaSlide(),
    5,
  ),
  motivation(MotivationSlide(), 3),
  pushups(PushupSlide(), 1),
  solution(SolutionSlide(), 3);

  const PagesOfPresentation(this.slide, this.items);

  final Widget slide;
  final int items;
}
