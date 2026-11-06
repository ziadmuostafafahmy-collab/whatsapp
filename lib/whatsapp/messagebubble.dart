import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final bool isImage;

   MessageBubble({

    required this.message,
    required this.isMe,
    this.isImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe
          ? Alignment.centerRight
          : Alignment.centerLeft,

      child: Container(
        margin:  EdgeInsets.symmetric(
          vertical: 15,
        ),

        padding:  EdgeInsets.all(12),

        constraints: BoxConstraints(
          maxWidth:
          MediaQuery.of(context).size.width * 0.72,
        ),

        decoration: BoxDecoration(
          color: isMe
              ?  Color(0xff202c33)
              :  Color(0xff008f55),

          borderRadius: BorderRadius.only(
            topLeft:  Radius.circular(isMe ? 12 : 0),
            topRight:  Radius.circular(isMe ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),

        child: isImage
            ? ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/Chatpic.png',
            height: 125,
            width: 180,
            repeat: ImageRepeat.repeat,
            fit: BoxFit.cover,
          ),
        )
            : Text(
          message,
          style:  TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),

      ),

    );
  }
}