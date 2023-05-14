import 'package:flutter/cupertino.dart';

enum FCGradients {
  backgroundPrimary(
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        CupertinoColors.systemTeal,
        CupertinoColors.systemIndigo,
        CupertinoColors.systemPurple,
        CupertinoColors.systemPink,
      ],
    ),
  );

  const FCGradients(this.gradient);

  final Gradient gradient;
}
