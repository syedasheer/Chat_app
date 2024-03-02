import 'package:day_one/status_screen.dart';
import 'package:day_one/call_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'whatsapphome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List Textlist = [
    "Home ufone",
    "Junaid Bhai",
    "home",
    "Shahood Bhai",
    "Mohib Bhai",
    "Rauf",
    "Minhaj Bhai",
    "Learn Flutter",
    "Asheer",
    "Relative"
  ];
  List Subtitlelist = [
    "A raha hon",
    "Yaar ye samjh nahi a raha ",
    "Ok",
    "Nahi hoa ",
    "Allah hafiz",
    "A jaye gy kisi din",
    "Jaab ap kahin",
    "Aj class hy",
    "INSHAALLAH",
    " Asslam o alikum",
  ];
  List imageList = [
    "Assets/png1.jpg",
    "Assets/png2.jpg",
    "Assets/png3.jpg",
    "Assets/png4.jpg",
    "Assets/png5.jpg",
    "Assets/png6.jpg",
    "Assets/png7.jpg",
    "Assets/png8.jpg",
    "Assets/png9.jpg",
    "Assets/png10.png"
  ];
  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.sizeOf(context).width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 25, 32),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: AppBar(
              bottom: TabBar(
                  indicatorColor: Colors.green,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Update",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Call",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
              backgroundColor: Color.fromARGB(221, 14, 31, 31),
              leading: Column(
                children: [
                  ElevatedButton(
                    child: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Container(
                              // decoration: BoxDecoration(color: Colors.blueGrey),
                              child: AlertDialog(
                                title: Text("You really want to exit app"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("NO"),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("YES"))
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ],
              ),

              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "WhatsApp",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isSearching = !isSearching;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.search,
                            size: 30, color: Colors.white70)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.more_vert_sharp,
                      color: Colors.white70,
                      size: 30,
                    ),
                  )
                ],	
              ),

              // actions: [
              //   Padding(padding: EdgeInsets.all(10),child:
              //   Icon(
              //     Icons.camera_alt,
              //     color: Colors.white70,
              //     size: 30,
              //   ),),
              //   Padding(padding: EdgeInsets.all(10),child:
              //   Icon(Icons.search, size: 30, color: Colors.white70)),
              //   Padding(padding: EdgeInsets.all(10),child:
              //   Icon(
              //     Icons.more_vert_sharp,
              //     color: Colors.white70,
              //     size: 30,
              //   ),)
              // ],
            )),
        body: TabBarView(children: [
          HomePage(),
          StatusScreen(),
          CallScreen(),
          //HomeScreen(),
        ]),
      ),
    );
  }
}