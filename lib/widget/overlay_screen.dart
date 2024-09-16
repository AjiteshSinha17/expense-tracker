import 'package:flutter/material.dart';

class Overlayscreen extends StatefulWidget {
  const Overlayscreen({super.key});
  @override
  createState() {
    return _OverlayState();
  }
}

class _OverlayState extends State<Overlayscreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(16));
  }
}
