import 'package:flutter/material.dart';
import 'messagebubble.dart';
import 'messageInput.dart';
class HomeScren  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Color(0xff168C4B),
          leading:IconButton(onPressed: (){},
              icon:
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 18,

              )
          ),
          titleSpacing: 0 ,
          title: Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/profile.png"),

              ),
              SizedBox(width: 14, height: 50.42,),
              Text("John Safwat",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 ,
                    fontWeight: FontWeight.bold
                ),

              ),
            ],

          ),
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(
                  Icons.call_outlined,
                  color:Colors.white,
                )
            ),
            IconButton(onPressed: (){},
                icon: Icon(
                  Icons.videocam,
                  color:Colors.white,
                )
            ),
            IconButton(onPressed: (){},
                icon: Icon(
                  Icons.more_vert,
                  color:Colors.white,
                )
            )

          ],
        ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF181818),
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(12),
                children: [
        MessageBubble(
        message: "Hello !",
        isMe: false,
      ),
      MessageBubble(
          message: "Hello !",
          isMe: true),
      MessageBubble(
        message:
        "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It's like the universe loves to surprise us when we least expect it!",
        isMe: false,
      ),
      MessageBubble(message: "",
          isMe:false ,
          isImage: true),
      MessageBubble(
          message:
          "what a Great Content Tp learn Flutter",
          isMe: true)

                ],
              ),
            ),
            MessageInput(),
          ],
        ),
      ),
    );
  }

}

