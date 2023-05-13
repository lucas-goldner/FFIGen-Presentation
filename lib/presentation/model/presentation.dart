import 'package:flutter/material.dart';

@immutable
class Presentation {
  const Presentation(this.page, this.locale);

  final int page;
  final Locale locale;

  Presentation copyWith({int? page, Locale? locale}) {
    return Presentation(
      page ?? this.page,
      locale ?? this.locale,
    );
  }
}
