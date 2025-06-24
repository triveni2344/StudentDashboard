import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
 }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShortsScreen(),
    );
  }
}

class ShortsScreen extends StatelessWidget {
  final List<Color> bgColors = [
    Colors.black,
    Colors.deepPurple, 
    Colors.green,
    Color.fromARGB(255, 30, 190, 201),
    Colors.orange
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: bgColors.length,
        itemBuilder: (context, index) {
          return ShortsItem(bgColor: bgColors[index]);
        },
      ),
    );
  }
}

class ShortsItem extends StatelessWidget {
  final Color bgColor;

  ShortsItem({required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Stack(
        children: [
          // Shorts content (centered)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.play_circle_fill, color: Colors.white, size: 80),
                SizedBox(height: 10),
                Text("Shorts", style: TextStyle(color: Colors.white, fontSize: 24)),
              ],
            ),
          ),
          // Right-side icons
          Positioned(
            right: 10,
            bottom: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.thumb_up, color: Colors.white),
                Text("437K", style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Icon(Icons.thumb_down, color: Colors.white),
                Text("Dislike", style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Icon(Icons.comment, color: Colors.white),
                Text("4,242", style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Icon(Icons.share, color: Colors.white),
                Text("Share", style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Icon(Icons.loop, color: Colors.white),
                Text("12K", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          // Bottom-left info
          Positioned(
            left: 10,
            bottom: 20,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text("AJ", style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
                SizedBox(width: 10),
                Text("@Ayejude", style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Row(
                  children: [
                   ElevatedButton(
                  onPressed: () {},
                  child: Text("Subscribe"),
                ),
                SizedBox(width: 10),
                  Icon(Icons.notifications, color: Colors.white),
                ],
                ),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
