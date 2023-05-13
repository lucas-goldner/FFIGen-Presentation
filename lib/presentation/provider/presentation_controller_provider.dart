import 'package:flutter/material.dart';
import 'package:fluttercon_2023_presentation/presentation/model/enum/pages_of_presentation.dart';
import 'package:fluttercon_2023_presentation/presentation/model/presentation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PresentationController extends StateNotifier<Presentation> {
  PresentationController() : super(const Presentation(0, Locale('en')));

  void nextPage() => state = state.page == PagesOfPresentation.values.length
      ? state.copyWith(page: PagesOfPresentation.values.length)
      : state.copyWith(page: state.page + 1);

  void toLastPage() => state = state.page == 0
      ? state.copyWith(page: 0)
      : state.copyWith(page: state.page - 1);
}

final presentationController =
    StateNotifierProvider<PresentationController, Presentation>((ref) {
  return PresentationController();
});
