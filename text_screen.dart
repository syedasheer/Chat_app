import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  final String name;
  final String userImage;

  const TextScreen({super.key, required this.name, required this.userImage});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  List messages = [];
  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        "Assets/whatsappBG.jpg",
      ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: 2,
          leadingWidth: 40,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white70,
              size: 25,
            ),
            onTap: () => Navigator.pop(context),
          ),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.userImage),
                radius: 20,
              ),
              Text(
                "   ${widget.name}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.video_call,
                  color: Colors.white70,
                  size: 27,
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              Icon(
                Icons.call,
                color: Colors.white70,
                size: 27,
              ),
              Padding(padding: EdgeInsets.all(8)),
              Icon(
                Icons.more_vert_sharp,
                color: Colors.white70,
                size: 27,
              )
            ],
          ),
          backgroundColor: Color.fromARGB(255, 29, 42, 46),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselSlider.builder(
                itemCount: imgList.length,
                options: CarouselOptions(
                    autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true),
                itemBuilder: (context, index, realIdx) {
                  return Center(
                      child: Image.network(imgList[index],
                          fit: BoxFit.cover, width: 1000));
                },
              ),
              SizedBox(
                height: 600,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      return Text(
                        messages[index].toString(),
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 0, 0)),
                      );
                    }),
              ),
              Row(
                children: [
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.white,
                  ),
                  SizedBox(
                      width: 270,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: messageController,
                        onSubmitted: (v) {
                          print(v);
                          messages.add(v);
                          messageController.clear();
                          setState(() {});
                        },
                      )),
                  Icon(Icons.attach_file, color: Colors.white),
                  Icon(Icons.camera_alt, color: Colors.white),
                  Icon(Icons.mic, color: Colors.white)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}