import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:  EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding:  EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color:  Color(0xFF168C4B)),
              ),
              child: Row(
                children: [
                   Icon(Icons.camera_alt_outlined, color: Colors.white),
                   SizedBox(width: 10),
                   Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Type a Message ...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -0.6,
                    child: Icon(Icons.send_outlined, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(width: 8),
           CircleAvatar(
            radius: 24,
            backgroundColor: Color(0xFF168C4B),
            child: Icon(Icons.mic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}