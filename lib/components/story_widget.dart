import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String username;
  final String imageUrl;

  StoryWidget({required this.username, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 5),
        Text(username, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
