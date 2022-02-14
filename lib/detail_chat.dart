import 'package:flutter/material.dart';
import 'package:flutter_chat_app/main_chat.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigo[900],
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black54,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MainChat();
              }));
            }, icon: Icon(Icons.arrow_back_ios, size: 18,), color: Colors.grey,),
            Container(
                width: 40,
                height: 40,
                child: Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage("assets/RoseProfil.jpg"))),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.greenAccent[400],
                          border: Border.all(color: Colors.white, width: 2)),
                    ),
                  ),
                ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Roseane Park",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "RobotoBold",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Online",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "RobotoRegular",
                        color: Colors.green),
                  ),
                )
              ],
            )
          ],
        ),
        elevation: 0,
        //shadowColor: Colors.black,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone_outlined),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam_outlined,
                    size: 30,
                  )),
            ],
          )
        ],
      ),
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          color: Colors.black54,
          child: Image(
            image: AssetImage("assets/BackgroundChat.jpg"),
            fit: BoxFit.fill,
            color: Colors.grey.withOpacity(0.2),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            //alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.black54,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    //margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[850],
                    ),
                    child: Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attach_file_rounded), color: Colors.grey,),
                      Text(
                        "Your Messages",
                        style: TextStyle(color: Colors.grey, fontFamily: "RobotoMedium", fontSize: 17),
                      ),
                    ])),
                    IconButton(onPressed: (){}, icon: Icon(Icons.mic_outlined, size: 35,), color: Colors.indigoAccent.shade700,)
              ],
            ),
          ),
        ),
        Align(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "02 Feb",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "RobotoBold",
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.35,
                    top: 20,
                    right: 20),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent[700],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 15,
                      //right: 10
                    ),
                    child: Text(
                      "How are you, Rose? Thank you for joining me in Zoom today",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoMedium",
                          fontSize: 16),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.45,
                    top: 20,
                    left: 20),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 20,
                      //right: 10
                    ),
                    child: Text(
                      "I'm fine, how about you? Anytime",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoMedium",
                          fontSize: 16),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.43,
                    top: 20,
                    right: 20),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent[700],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 15,
                      //right: 10
                    ),
                    child: Text(
                      "I'm fine too. So, let's learn physics for today?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoMedium",
                          fontSize: 16),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.38,
                    top: 20,
                    left: 20),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 20,
                      //right: 10
                    ),
                    child: Text(
                      "Sure, are we going to learn the fifth chapter now?",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoMedium",
                          fontSize: 16),
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
