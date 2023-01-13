import 'package:flutter/material.dart';

import 'Widgets/Call_Widget.dart';
import 'Widgets/ChatsWidget.dart';
import 'Widgets/Status_Wifgrt.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "ASWhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 12, right: 15),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    size: 28,
                  ),
                ),
              ),
              PopupMenuButton(
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            value: 1,
                            child: Text(
                              "New Group",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        PopupMenuItem(
                            value: 2,
                            child: Text(
                              "New broadcast",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        PopupMenuItem(
                            value: 3,
                            child: Text(
                              "Linked devices",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        PopupMenuItem(
                            value: 4,
                            child: Text(
                              "Starred messages",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        PopupMenuItem(
                            value: 5,
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ))
                      ])
            ],
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  tabs: [
                    // tab 1
                    Container(
                      width: 25,
                      child: Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                    // tab 2
                    Container(
                      width: 85,
                      child: Row(
                        children: [
                          Text(
                            "CHATS",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "10",
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // tab 3
                    Container(
                      width: 70,
                      child: Row(
                        children: [
                          Text(
                            "STATUS",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    // tab 4

                    Container(
                      child: Row(
                        children: [
                          Text(
                            "CALLS",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      // --------------------- tab 1 Camera -------------------------------------
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black,
                      ),
//------------------------------------ tab 2 Chats ---------------------------------------
                      ChatsWidget(),
// ----------------------------------- tab 3 Status --------------------------------------
                      StatusWifgrt(),
                      // ------------------ tab 4 Calls   -----------------------
                      CallWidget()
                    ],
                  ))
            ],
          ),
        ));
  }
}
