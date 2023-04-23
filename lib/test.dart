import 'package:flutter/material.dart';

class FlutterAssignment extends StatelessWidget {
 static const String routeName = 'Test';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Peson"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/person.jpg"),
          ),
          actions: const [
            Icon(Icons.video_camera_back),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.list),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/person1.jpg",
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "this is my first massage",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.white),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/person2.jpg",
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "this is my second massage",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
