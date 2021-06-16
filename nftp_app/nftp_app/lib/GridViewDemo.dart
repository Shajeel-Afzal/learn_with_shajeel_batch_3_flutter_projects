import 'package:flutter/material.dart';
import 'package:nftp_app/FullScreenImageViwer.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Page"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          for (int i = 0; i < 50; i++)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FullScreenImageViewer(i);
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Hero(
                  tag: "hero_tag_" + i.toString(),
                  child: Image.asset(
                    "assets/images/shajeel_2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
