import 'package:barterit/models/user.dart';
import 'package:flutter/material.dart';

class MyItemsTab extends StatefulWidget {
  final User user;
  const MyItemsTab({super.key, required this.user});

  @override
  State<MyItemsTab> createState() => _MyItemsTabState();
}

class _MyItemsTabState extends State<MyItemsTab> {
  String maintitle = "My Item";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(maintitle),
    );
  }
}
