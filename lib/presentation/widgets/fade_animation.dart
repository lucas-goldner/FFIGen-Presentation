/*
 *  ██████╗ ██╗████████╗███████╗ █████╗  ██████╗████████╗ ██████╗ ██████╗ ██╗   ██╗
 *  ██╔══██╗██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗╚██╗ ██╔╝
 *  ██████╔╝██║   ██║   █████╗  ███████║██║        ██║   ██║   ██║██████╔╝ ╚████╔╝
 *  ██╔══██╗██║   ██║   ██╔══╝  ██╔══██║██║        ██║   ██║   ██║██╔══██╗  ╚██╔╝
 *  ██████╔╝██║   ██║   ██║     ██║  ██║╚██████╗   ██║   ╚██████╔╝██║  ██║   ██║
 *  ╚═════╝ ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═╝ ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝
 *
 * Copyright (c) 2022 Bitfactory GmbH. All rights reserved.
 * https://www.bitfactory.io
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are not permitted.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *   appear_animation.dart
 *   pdm-app
 *
 *   Created by lucas-goldner on 12/04/2022
 */

import 'dart:async';

import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({
    required this.child,
    required this.delay,
    super.key,
  });
  final Widget child;
  final int delay;

  @override
  FadeAnimState createState() => FadeAnimState();
}

class FadeAnimState extends State<FadeAnimation> with TickerProviderStateMixin {
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
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animationController);
    _animOffset = Tween<Offset>(begin: const Offset(0, -0.1), end: Offset.zero)
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
