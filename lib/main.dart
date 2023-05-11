import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/presentation.dart';

void main() {
  runApp(const MyPresentation());
}

class MyPresentation extends StatelessWidget {
  const MyPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Fluttercon 2023 - Lucas Goldner",
      home: Presentation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
