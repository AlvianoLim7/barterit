import 'package:flutter/material.dart';

class BarterTab extends StatefulWidget {
  const BarterTab({super.key});

  @override
  State<BarterTab> createState() => _BarterTabState();
}

class _BarterTabState extends State<BarterTab> {
  String maintitle = "BarterTab";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(maintitle),
    );
  }
}
