// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercon_2023_presentation/generated/l10n.dart';

import 'package:fluttercon_2023_presentation/presentation/view/presentation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  late BuildContext buildContext;

  Widget makeTestableWidget() => CupertinoApp(
        key: const Key('MainApp'),
        home: Builder(
          builder: (context) {
            buildContext = context;
            return const Presentation();
          },
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('en'),
      );

  testWidgets('test render main test', (tester) async {
    await tester.pumpWidget(ProviderScope(child: makeTestableWidget()));
    expect(find.byType(Presentation), findsOneWidget);
    expect(find.text(S.of(buildContext).flutterTitle), findsOneWidget);
  });
}
