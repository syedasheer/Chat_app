import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

List ImageList = [
  "Assets/picture1.png",
  "Assets/picture2.png",
  "Assets/png10.png",
  "Assets/png9.jpg"
];

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        color: Color.fromARGB(221, 18, 31, 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.more_vert_sharp,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                height: 100,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage("Assets/png9.jpg"),
                        radius: 30,
                      ),
                      Positioned.fill(
                        top: 35,
                        left: 40,
                        child: Icon(
                          Icons.circle,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  title: (Text(
                    "My Status",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
                  subtitle: (Text(
                    "Yesterday",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Text(
                    "Viewed updates",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                    size: 30,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Text(
                    "Channels",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "+",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
                // height: 20,
                child: Row(children: [
              Text(
                  "Stat updated on topics that matter to you.Find\n channels to follow below.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey))
            ])),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 140,
                        //  margin: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 40, 46, 49)),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 20, left: 20)),
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 40, top: 10)),
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(ImageList[index]),
                                    ),
                                    Positioned(
                                        top: 40,
                                        left: 40,
                                        child: Icon(
                                          Icons.circle_rounded,
                                          color: Colors.greenAccent,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, top: 40)),
                                Text(
                                  "geo news",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Padding(
                                //     padding:
                                //         EdgeInsets.only(left: 35, top: 30)),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 66, 105, 68),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "follow",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
                right: 170,
              ),
              height: 55,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromARGB(255, 79, 199, 159)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Channels",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      //   ),
    );
  }
}