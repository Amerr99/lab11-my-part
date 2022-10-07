import 'package:english/screens/edit.dart';
import 'package:line_icons/line_icons.dart';
import '../main.dart';
import 'package:english/components/tile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: double.infinity,
        backgroundColor: const Color.fromARGB(255, 186, 203, 212),
        child: ListView(
          children: [
            Container(
                height: 200,
                margin: const EdgeInsets.only(top: 40),
                child: Column(
                
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text("Amer Melhem",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    )
                  ],
                )),
            MyTile(LineIcons.userCircle, "Edit Profile", LineIcons.arrowRight,
                () {
              Navigator.of(context).pushNamed("profile page");
            
            }),
            MyTile(LineIcons.fileDownload, "Download Courses",
                LineIcons.arrowRight, () {}),
            MyTile(
                LineIcons.key, "Change Password", LineIcons.arrowRight, () {}),
            MyTile(Icons.logout_rounded, "Log Out", LineIcons.arrowRight, () {})
          ],
        ),
      ),
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
