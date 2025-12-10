import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  Avatar(this.url);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(url));
  }
}NetworkImageNetworkImageNetworkImageNetworkImage
