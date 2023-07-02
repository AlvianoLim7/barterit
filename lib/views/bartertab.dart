import 'dart:convert';
// import 'dart:developer';

import 'package:barterit/models/items.dart';
import 'package:barterit/models/user.dart';
import 'package:barterit/myconfig.dart';
import 'package:barterit/views/itemdetailscreen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BarterTab extends StatefulWidget {
  final User user;
  const BarterTab({super.key, required this.user});

  @override
  State<BarterTab> createState() => _BarterTabState();
}

class _BarterTabState extends State<BarterTab> {
  String maintitle = "Barter";
  late double screenHeight, screenWidth;
  late int axiscount = 2;
  late List<Widget> tabchildren;
  List<Items> itemList = <Items>[];
  int numofpage = 1, curpage = 1;
  int numofresult = 0;

  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadItems(1);
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 600) {
      axiscount = 3;
    } else {
      axiscount = 2;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        elevation: 5,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showsearchDialog();
            },
          )
        ],
      ),
      body: itemList.isEmpty
          ? const Center(
              child: Text("No Data"),
            )
          : Column(children: [
              Container(
                height: 24,
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: Text(
                  "${itemList.length} Items Found",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Expanded(
                  child: GridView.count(
                      crossAxisCount: axiscount,
                      children: List.generate(
                        itemList.length,
                        (index) {
                          return Card(
                              child: InkWell(
                                  onTap: () async {
                                    Items useritem = Items.fromJson(
                                        itemList[index].toJson());
                                    await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (content) =>
                                                ItemDetailScreen(
                                                  user: widget.user,
                                                  useritems: useritem,
                                                )));
                                    loadItems(1);
                                  },
                                  child: Column(children: [
                                    SizedBox(
                                      height: 120,
                                      child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: 1,
                                        itemBuilder: (context, imageIndex) {
                                          return Column(children: [
                                            CachedNetworkImage(
                                              width: screenWidth,
                                              fit: BoxFit.cover,
                                              imageUrl:
                                                  "${MyConfig().SERVER}/barterit/assets/items/front/${itemList[index].itemsId}.png",
                                              placeholder: (context, url) =>
                                                  const LinearProgressIndicator(),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                          ]);
                                        },
                                      ),
                                    ),
                                    Text(
                                      itemList[index].itemsName.toString(),
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      "${itemList[index].itemsQty} items",
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "At ${itemList[index].itemsState} ",
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ])));
                        },
                      )))
            ]),
    );
  }

  void loadItems(int pg) {
    http.post(Uri.parse("${MyConfig().SERVER}/barterit/php/load_items.php"),
        body: {"pageno": pg.toString()}).then((response) {
      itemList.clear();
      if (response.statusCode == 200) {
        var jsondata = jsonDecode(response.body);
        if (jsondata['status'] == "success") {
          numofpage = int.parse(jsondata['numofpage']);
          numofresult = int.parse(jsondata['numofresult']);
          var extractdata = jsondata['data'];
          extractdata['items'].forEach((v) {
            itemList.add(Items.fromJson(v));
          });
        }
        setState(() {});
      }
    });
  }

  void showsearchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: const Text(
            "Search?",
            style: TextStyle(),
          ),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
                controller: searchController,
                decoration: const InputDecoration(
                    labelText: 'Search',
                    labelStyle: TextStyle(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0),
                    ))),
            const SizedBox(
              height: 4,
            ),
            ElevatedButton(
                onPressed: () {
                  String search = searchController.text;
                  searchItems(search);
                  Navigator.of(context).pop();
                },
                child: const Text("Search"))
          ]),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Close",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void searchItems(String search) {
    http.post(Uri.parse("${MyConfig().SERVER}/barterit/php/load_items.php"),
      body: {"search": search}).then((response) {
      itemList.clear();
      if (response.statusCode == 200) {
        var jsondata = jsonDecode(response.body);
        if (jsondata['status'] == "success") {
          var extractdata = jsondata['data'];
          extractdata['items'].forEach((v) {
            itemList.add(Items.fromJson(v));
          });
        }
        setState(() {});
      }
    });
  }
}
