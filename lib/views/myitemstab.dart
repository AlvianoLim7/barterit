import 'package:barterit/models/user.dart';
import 'package:barterit/views/additemscreen.dart';
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if (widget.user.id != "na") {
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => AddItemScreen(
                            user: widget.user,
                          )));
              // loadsellerCatches();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Please login/register an account")));
            }
          },
          child: const Text(
            "+",
            style: TextStyle(fontSize: 32),
          )),
    );
  }
}
