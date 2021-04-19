import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);

    if (orientation == Orientation.portrait){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Our Planet"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ImageWithTitle(
                title: "Earth",
                img: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Earth_Western_Hemisphere_transparent_background.png/1200px-Earth_Western_Hemisphere_transparent_background.png",
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text('Button 1'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Button 2'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: Text('Button 3'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Our Planet"),
      ),
      body: Row(
        children: [
          Expanded(
            child: ImageWithTitle2(
              title: "Earth",
              img: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Earth_Western_Hemisphere_transparent_background.png/1200px-Earth_Western_Hemisphere_transparent_background.png",
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Button 1'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text('Button 2'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text('Button 3'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
class ImageWithTitle extends StatelessWidget {
  final String title;
  final String img;
  ImageWithTitle({this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
        Expanded(
            child: Image.network(img)),
      ],
    );
  }
}

class ImageWithTitle2 extends StatelessWidget {
  final String title;
  final String img;
  ImageWithTitle2({this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Expanded(
            child: Image.network(img)),
        Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), ),
      ],
    );
  }
}



