import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nftp_app/GridViewDemo.dart';
import 'package:nftp_app/LoginPage.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginPage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  int i;

  ProfilePage(int i) {
    this.i = i;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NFTP Application!"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "hero_image_" + i.toString(),
            child: Image.asset(
              "assets/images/shajeel_round.png",
              width: 300,
            ),
          ),
          Container(
            height: 20,
          ),
          Text(
            "Shajeel Afzal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 40,
          ),
          Wrap(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  print("Facebook clicked!");
                  String url = "https://www.facebook.com/shajeel.afzal";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebookSquare,
                      size: 14,
                    ),
                    Container(
                      width: 6,
                    ),
                    Text("Facebook"),
                  ],
                ),
              ),
              Container(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  print("Twitter clicked!");
                  String url = "https://www.facebook.com/shajeel.afzal";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.twitterSquare,
                      size: 14,
                    ),
                    Container(
                      width: 6,
                    ),
                    Text("Twitter"),
                  ],
                ),
              ),
              Container(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  print("Youtube clicked!");
                  String url = "https://www.facebook.com/shajeel.afzal";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.youtube,
                      size: 14,
                    ),
                    Container(
                      width: 6,
                    ),
                    Text("Youtube"),
                  ],
                ),
              ),
              Container(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  print("Github clicked!");
                  String url = "https://www.facebook.com/shajeel.afzal";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.github,
                      size: 14,
                    ),
                    Container(
                      width: 6,
                    ),
                    Text("Github"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
