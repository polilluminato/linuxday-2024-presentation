// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//https://codewithandrea.com/articles/async-value-widget-riverpod/
class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.data,
    required this.widget,
  });
  // input async value
  final AsyncValue<T> data;
  // output builder function
  final Widget Function(T) widget;

  @override
  Widget build(BuildContext context) {
    //Pattern matching [Usage example: reading a configuration file](https://riverpod.dev/docs/providers/future_provider#usage-example-reading-a-configuration-file)
    return switch (data) {
      AsyncData(:final value) => widget(value),
      AsyncError(:final error) => Center(
          child: Text(
            error.toString(),
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.red),
          ),
        ),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
