import 'package:flutter/services.dart';

enum KeyActions {
  goToLastSlide([PhysicalKeyboardKey.keyA, PhysicalKeyboardKey.arrowLeft]),
  goNextSlide([PhysicalKeyboardKey.keyD, PhysicalKeyboardKey.arrowRight]);

  const KeyActions(this.keybindings);

  final List<PhysicalKeyboardKey> keybindings;
}
