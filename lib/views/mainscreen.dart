import 'dart:convert';

import 'package:barterit/models/user.dart';
import 'package:barterit/myconfig.dart';
import 'package:barterit/views/seller/myitemstab.dart';
import 'package:barterit/views/barter/bartertab.dart';
import 'package:barterit/views/chatstab.dart';
import 'package:barterit/views/profile/profiletab.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String maintitle = "Barter";
  late List<Widget> tabchildren;
  late User user;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabchildren = [
      BarterTab(
        user: widget.user,
      ),
      MyItemsTab(user: widget.user),
      ChatsTab(user: widget.user),
      ProfileTab(user: widget.user),
    ];
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.currency_exchange,
              ),
              label: "Barter"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_business,
              ),
              label: "My Item"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile")
        ],
      ),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "Barter";
      }
      if (_currentIndex == 1) {
        maintitle = "My Item";
      }
      if (_currentIndex == 2) {
        maintitle = "Chat";
      }
      if (_currentIndex == 3) {
        maintitle = "Profile";
      }
    });
  }

  void loadData() {
    http.post(Uri.parse("${MyConfig().SERVER}/barterit/php/load_user.php"),
        body: {"email": widget.user.email}).then((response) {
      if (response.statusCode == 200) {
        var jsondata = jsonDecode(response.body);
        if (jsondata != null && jsondata['status'] == "success") {
          var userData = jsondata['data'];
          if (userData != null) {
            setState(() {
              widget.user.name = userData['name'];
              widget.user.email = userData['email'];
              widget.user.datareg = userData['datareg'];
              widget.user.coin = userData['coin'];
            });
          }
        }
      }
    });
  }
}
