import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercon_2023_presentation/main.dart';
import 'package:fluttercon_2023_presentation/pages/01_title/view/title_slide.dart';
import 'package:fluttercon_2023_presentation/pages/02_dummy_1/view/dummy_1_slide.dart';
import 'package:fluttercon_2023_presentation/presentation/view/presentation_slides.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('Test render presentation', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyPresentation()));
    expect(find.byType(PresentationSlides), findsOneWidget);
  });
  testWidgets('Test presentation go to next slide', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyPresentation()));

    expect(find.byType(PresentationSlides), findsOneWidget);
    expect(find.byType(TitleSlide), findsOneWidget);

    await tester.tap(find.byType(PresentationSlides));
    await tester.pump();

    expect(find.byType(DummySlideOne), findsOneWidget);
  });

  testWidgets('Test presentation go to next slide and back', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyPresentation()));

    expect(find.byType(PresentationSlides), findsOneWidget);
    expect(find.byType(TitleSlide), findsOneWidget);

    await tester.tap(find.byType(PresentationSlides));
    await tester.pump();

    expect(find.byType(DummySlideOne), findsOneWidget);

    await tester.tap(
      find.byType(PresentationSlides),
      buttons: kSecondaryButton,
    );
    await tester.pump();

    expect(find.byType(TitleSlide), findsOneWidget);
  });
}
