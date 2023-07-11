// ignore_for_file: non_constant_identifier_names

import 'package:barterit/models/user.dart';
import 'package:barterit/views/profile/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileTab extends StatefulWidget {
  final User user;
  const ProfileTab({super.key, required this.user});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  String maintitle = "Profile";
  late double screenHeight, screenWidth, cardwitdh;
  late User user;

  final TextEditingController _nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        elevation: 5,
        actions: [
          IconButton(
              onPressed: () {
                LogoutUser();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: screenHeight * 0.25,
            width: screenWidth,
            child: Card(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: const EdgeInsets.all(4),
                  width: screenWidth * 0.4,
                  child: Image.asset(
                    "assets/images/profile.png",
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Text(
                          widget.user.name.toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text("Email: ${widget.user.email}"),
                        Text("Data:  ${widget.user.datareg}"),
                        Text("Coin: ${widget.user.coin}"),
                      ],
                    )),
              ]),
            ),
          ),
          Container(
            width: screenWidth,
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.background,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Text("Profile Setting",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          const SizedBox(width: 20.0),
          TextFormField(
            controller: _nameEditingController,
            //validate name
            validator: (val) => val!.isEmpty || (val.length < 3)
                ? "name must be longer than 3"
                : null,
            decoration: InputDecoration(
                labelText: widget.user.name,
                labelStyle: const TextStyle(),
                icon: const Icon(Icons.person),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0))),
          ),
        ]),
      ),
    );
  }

  void LogoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
}
