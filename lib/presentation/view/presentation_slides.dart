import 'package:flutter/cupertino.dart';
import 'package:fluttercon_2023_presentation/presentation/model/enum/pages_of_presentation.dart';

import 'package:fluttercon_2023_presentation/presentation/provider/presentation_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PresentationSlides extends HookConsumerWidget {
  const PresentationSlides({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presentation = ref.watch(presentationController);

    return GestureDetector(
      onTap: () => ref
          .read<PresentationController>(presentationController.notifier)
          .nextPage(),
      child: CupertinoPageScaffold(
        child: PagesOfPresentation.values.elementAt(presentation.page).slide,
      ),
    );
  }
}
