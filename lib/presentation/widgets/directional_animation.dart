import 'dart:async';

import 'package:flutter/material.dart';

class DirectionalAnimation extends StatefulWidget {
  const DirectionalAnimation({
    required this.child,
    required this.delay,
    super.key,
  });
  final Widget child;
  final int delay;

  @override
  DirectionalAnimState createState() => DirectionalAnimState();
}

class DirectionalAnimState extends State<DirectionalAnimation>
    with TickerProviderStateMixin {
  AnimationController? _animController;
  Animation<Offset>? _animOffset;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    final animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animController = animationController;
    final curve = CurvedAnimation(
      curve: Curves.decelerate,
      parent: animationController,
    );

    // Modify the _animOffset to make it slide from left to right
    _animOffset = Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
        .animate(curve);

    _timer = Timer(Duration(milliseconds: widget.delay), _animate);
  }

  void _animate() {
    _animController?.forward();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animationController = _animController;
    final animOffset = _animOffset;
    if (animationController == null || animOffset == null) {
      return widget.child;
    }

    return FadeTransition(
      opacity: animationController,
      child: SlideTransition(
        position: animOffset,
        child: widget.child,
      ),
    );
  }
}
