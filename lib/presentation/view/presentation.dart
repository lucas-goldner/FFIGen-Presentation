import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttercon_2023_presentation/generated/l10n.dart';
import 'package:fluttercon_2023_presentation/presentation/provider/counter_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Presentation extends HookConsumerWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return GestureDetector(
      onTap: () => ref.read<Counter>(counterProvider.notifier).increment(),
      child: CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                S.of(context).flutterTitle,
              ),
              Text(
                '$counter',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
