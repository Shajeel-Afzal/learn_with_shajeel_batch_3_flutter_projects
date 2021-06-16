import 'package:flutter/material.dart';

class FullScreenImageViewer extends StatefulWidget {
  int i;

  FullScreenImageViewer(int i) {
    this.i = i;
  }

  @override
  _FullScreenImageViewerState createState() => _FullScreenImageViewerState();
}

class _FullScreenImageViewerState extends State<FullScreenImageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "hero_tag_" + widget.i.toString(),
        child: Image.asset(
          "assets/images/shajeel_2.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
