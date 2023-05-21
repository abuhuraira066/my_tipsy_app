import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberValue = 0;
  int scrollValue = 0;

  void increaseNumberValue() {
    setState(() {
      numberValue++;
    });
  }

  void decreaseNumberValue() {
    setState(() {
      numberValue--;
    });
  }

  void increaseScrollValue() {
    setState(() {
      scrollValue++;
    });
  }

  void decreaseScrollValue() {
    setState(() {
      scrollValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60.0,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: () {
                      // TODO: Add camera functionality
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.red, Colors.orange],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        decreaseNumberValue();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                    ),
                    child: Icon(Icons.remove, size: 36.0),
                  ),
                  Text(
                    numberValue.toString(),
                    style: TextStyle(fontSize: 24.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        increaseNumberValue();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                    ),
                    child: Icon(Icons.add, size: 36.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    decreaseScrollValue();
                  });
                },
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_downward),
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: Text(
                scrollValue.toString(),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    increaseScrollValue();
                  });
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.arrow_upward),
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Add functionality for button 1
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                    ),
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Add functionality for button 2
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24.0),
                    ),
                    child: Text('Button 2'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add functionality for button 3
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24.0),
                  ),
                  child: Text('Button 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Add functionality for button 4
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24.0),
                  ),
                  child: Text('Button 4'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
