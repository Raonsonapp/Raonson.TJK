import 'package:flutter/material.dart';
import '../services/king_ai_service.dart';

class KingAIScreen extends StatefulWidget {
  @override
  _KingAIScreenState createState() => _KingAIScreenState();
}

class _KingAIScreenState extends State<KingAIScreen> {
  final KingAIService _service = KingAIService();
  String outputUrl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KING AI Builder")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              String url = await _service.createApp("MyProject", "apk");
              setState(() {
                outputUrl = url;
              });
            },
            child: Text("Create APK"),
          ),
          SizedBox(height: 20),
          Text(outputUrl, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
