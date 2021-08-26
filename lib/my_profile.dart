import 'dart:ui';

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: [
            Image(
              width: double.infinity,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://haircutinspiration.com/wp-content/uploads/Teen-Boy-Haircuts-3-2-1080x720.jpg"),
            ),
            Positioned(
                bottom: -55,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://haircutinspiration.com/wp-content/uploads/Textured-Skin-Fade-e1537152707348-750x991.jpg"),
                ))
            // Positioned(child: CircleAvatar())
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ListTile(
          title: Center(
            child: Text(
              "John Abbort",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Center(
              child: Text(
            "Artist & Music Composer",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          )),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.facebook_sharp),
          label: Text(
            "Follow Me",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(width: 3, color: Colors.black)),
          ),
        ),
        ListTile(
          title: Text(
            "About Me",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "John Abbort was a German composer and pianist of the Romantic period, but he was more a disciple of the Classical tradition. He wrote in many genres, including symphonies, concerti, chamber music, piano works, and choral compositions, many of which reveal the influence of folk music.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
