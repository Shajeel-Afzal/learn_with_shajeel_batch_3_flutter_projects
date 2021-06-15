import 'package:flutter/material.dart';
import 'package:nftp_app/main.dart';

class ListViewDemoPage extends StatefulWidget {
  @override
  _ListViewDemoPageState createState() => _ListViewDemoPageState();
}

class _ListViewDemoPageState extends State<ListViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 1000; i++)
            GestureDetector(
              onTap: () {
                print("List Item # " + i.toString() + " clicked!");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ProfilePage(i);
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      i.toString(),
                    ),
                    subtitle: Text("It's a sub title!"),
                    leading: Hero(
                      tag: "hero_image_" + i.toString(),
                      child: Image.asset("assets/images/shajeel_round.png"),
                    ),
                    trailing: Icon(Icons.arrow_right_outlined),
                  ),
                  Divider(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
