export 'view_base_layout_widget.dart';

import 'package:flutter/material.dart';

class ViewBaseLayoutWidget extends StatelessWidget {
  final Widget child;

  const ViewBaseLayoutWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: child,
        ),
      ),
    );
  }
}
