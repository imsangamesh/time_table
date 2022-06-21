import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';

class MyPage extends StatelessWidget {
  const MyPage(this.title, this.icon, this.link, {Key? key}) : super(key: key);

  final String title;
  final String link;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(icon),
          ),
        ],
      ),
      body: PhotoView(
        imageProvider: NetworkImage(link),
      ),
    );
  }
}
