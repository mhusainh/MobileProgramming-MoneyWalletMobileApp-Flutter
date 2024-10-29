import 'package:flutter/material.dart';

import '../../../core/global_component/BarButtonComponent.dart';

class BarButtonWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BarButtonWidget({required this.selectedIndex, required this.onItemTapped});

  @override
  _BarButtonWidgetState createState() => _BarButtonWidgetState();
}

class _BarButtonWidgetState extends State<BarButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return BarButtonComponent(
      selectedIndex: widget.selectedIndex,
      onTap: widget.onItemTapped,
    );
  }
}
