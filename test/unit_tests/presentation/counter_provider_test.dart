import 'package:flutter_test/flutter_test.dart';
import 'package:fluttercon_2023_presentation/presentation/provider/counter_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  test('initial state is 0', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(container.read<Counter>(counterProvider.notifier).state, 0);
  });

  test('state is incremented by 1', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    // verify starts at 0
    expect(container.read<Counter>(counterProvider.notifier).state, 0);

    // call increment
    container.read<Counter>(counterProvider.notifier).increment();

    // verify new value
    expect(container.read<Counter>(counterProvider.notifier).state, 1);
  });

  test('state is decremented by 1', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    // verify starts at 0
    expect(container.read<Counter>(counterProvider.notifier).state, 0);

    // call decrement
    container.read<Counter>(counterProvider.notifier).decrement();

    // verify new value
    expect(container.read<Counter>(counterProvider.notifier).state, -1);
  });
}
