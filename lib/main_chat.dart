import 'package:flutter/material.dart';
import 'package:flutter_chat_app/detail_chat.dart';

class MainChat extends StatefulWidget {
  const MainChat({Key? key}) : super(key: key);

  @override
  _MainChatState createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Text(
          'Chats',
          style: TextStyle(fontFamily: "RobotoMedium"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailChat();
              }));
            },
            icon: Icon(Icons.edit),
          )
        ],
      ),
      body: Container(
        color: Colors.black54,
        child: Stack(children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                //padding: EdgeInsets.all(),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontFamily: "RobotoMedium",
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Colors.white10,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.white
                  border: Border.all(
                    color: Colors.white10,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.white
                      ),
                      child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage("assets/RoseProfil.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.greenAccent[400],
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ),
                        ),
                      ]),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 10),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                " Roseane Park",
                                style: TextStyle(
                                    fontFamily: "RobotoBold",
                                    color: Colors.grey[200],
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            " Sure we are going to lea...",
                            style: TextStyle(
                                fontFamily: "RobotoMedium",
                                color: Colors.grey[400],
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, bottom: 20),
                      child: Text(
                        " 14.23",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.white
                  border: Border.all(
                    color: Colors.white10,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigoAccent[700]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                              child: Text(
                            "EB",
                            style: TextStyle(
                                fontFamily: "RobotoBold", color: Colors.white),
                          ))),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 10),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                " Edwar Boy",
                                style: TextStyle(
                                    fontFamily: "RobotoBold",
                                    color: Colors.grey[200],
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            " Hi Ahmed! How's are you?",
                            style: TextStyle(
                                fontFamily: "RobotoMedium",
                                color: Colors.grey[400],
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 15),
                        child: Text(
                          " 8.42",
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.white
                  border: Border.all(
                    color: Colors.white10,
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.width * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigoAccent[700]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                              child: Text(
                            "SA",
                            style: TextStyle(
                                fontFamily: "RobotoBold", color: Colors.white),
                          ))),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 10),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                " Shabrina A",
                                style: TextStyle(
                                    fontFamily: "RobotoBold",
                                    color: Colors.grey[200],
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 10),
                          child: Text(
                            " Am contacting you beca...",
                            style: TextStyle(
                                fontFamily: "RobotoMedium",
                                color: Colors.grey[400],
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Column(children: [
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 15),
                        child: Text(
                          " 10.00",
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 10),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.group_outlined,
                          size: 30,
                          color: Colors.white,
                        )),
                  ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    
                    Text("Chat", style: TextStyle(fontFamily: "RobotoMedium", fontSize: 20, color: Colors.white),),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                    )
                  ]),
                  Column(children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                          size: 30,
                          color: Colors.white,
                        )),
                  ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
