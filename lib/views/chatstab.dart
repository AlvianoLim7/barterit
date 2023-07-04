import 'package:barterit/models/user.dart';
import 'package:flutter/material.dart';

class ChatsTab extends StatefulWidget {
  final User user;
  const ChatsTab({super.key, required this.user});

  @override
  State<ChatsTab> createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  String maintitle = "Chats";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        elevation: 5,
      ),
    );
  }
}
