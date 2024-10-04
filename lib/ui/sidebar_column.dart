import 'package:flutter/material.dart';

class SidebarColumn extends StatelessWidget {
  const SidebarColumn({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children,
    );
  }
}
