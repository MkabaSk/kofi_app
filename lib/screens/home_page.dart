import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kofi_app/screens/chatPage.dart';
import 'package:http/http.dart' as http;

import '../models/users.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<User> users = [];

    Future<void> getUsers() async {
      const url = 'https://randomuser.me/api/?results=100';
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body);
      final results = json['results'] as List<dynamic>;
      final transformed = results.map((e) {
        return User(
          gender: e['gender'],
          email: e['email'],
          phone: e['phone'],
          cell: e['cell'],
          nat: e['nat'],
        );
      }).toList();
      setState(() {
        users = transformed;
      });
      print(users);
    }

    @override
    void initState() {
      super.initState();
    }

    return Scaffold(
      appBar: MyCustomAppBar(),
      body: Column(
        children: [

          /// Statut code
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage("assets/images/Diamond Ore.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "UserKofi",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          /// Text code
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text("Messages"),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black.withOpacity(0.1),
          ),


        Material(
          child: InkWell(
            onTap: () {
              //Get.off(() => ChatPage());
              //Get.to(() => ChatPage());
             Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(),));
             //Navigator.pushNamed(context, ChatPage().id);
            },
            splashColor: Colors.green,
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    height: 62,
                    width: 62,
                    margin: EdgeInsets.only(right: 23),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/EARTH.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Etudiant",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Wrap(
                                  children: [
                                    Text(
                                      "Test widgets",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "20:35",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          color: Colors.grey,
                          height: 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {},
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.edit,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(190.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50.0)),
      ),
      child: Stack(
        children: <Widget>[
          AppBar(
            elevation: 0,
            backgroundColor: Colors.black,
            title: const Text(
              "Chats",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            leading: const Padding(
              padding: const EdgeInsets.all(7.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/EARTH.jpg"),
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white30,
                      width: 2.0,
                    ),
                  ),
                  child: const Center(
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 120.0, // Positionnement de la barre de recherche
            left: 0.0,
            right: 0.0,
            child: Container(
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(80.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 32,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Colors.white60,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
