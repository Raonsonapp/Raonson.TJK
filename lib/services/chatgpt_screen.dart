import 'package:flutter/material.dart';
import '../services/chatgpt_service.dart';

class ChatGPTScreen extends StatefulWidget {
  @override
  _ChatGPTScreenState createState() => _ChatGPTScreenState();
}

class _ChatGPTScreenState extends State<ChatGPTScreen> {
  final TextEditingController _controller = TextEditingController();
  final ChatGPTService _chatService = ChatGPTService(apiKey: "YOUR_API_KEY");
  String response = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ChatGPT")),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: "Enter your question"),
          ),
          ElevatedButton(
            onPressed: () async {
              String res = await _chatService.getResponse(_controller.text);
              setState(() {
                response = res;
              });
            },
            child: Text("Ask"),
          ),
          SizedBox(height: 20),
          Text(response, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
