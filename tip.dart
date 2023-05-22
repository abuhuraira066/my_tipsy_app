import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // Add your camera functionality here
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PER PERSON',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '48',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '.85',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'SUBTOTAL',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$42.48',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'TIP',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$6.37',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(9),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '97',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '.67',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'SUBTOTAL',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$84.95',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'TIP',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '\$12.37',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('10%'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('15%'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('20%'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('custom'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'TOTAL AMOUNT',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberWheelSlider(
                  initialValue: 0,
                  min: 0,
                  max: 10,
                  onChanged: (value) {
                    // Handle the value change
                  },
                  arrowColor: Colors.pink,
                ),
                NumberWheelSlider(
                  initialValue: 0,
                  min: 0,
                  max: 10,
                  onChanged: (value) {
                    // Handle the value change
                  },
                  arrowColor: Colors.pink,
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('+ -'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberWheelSlider extends StatefulWidget {
  final double initialValue;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final Color arrowColor;

  NumberWheelSlider({
    required this.initialValue,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.arrowColor,
  });

  @override
  _NumberWheelSliderState createState() => _NumberWheelSliderState();
}

class _NumberWheelSliderState extends State<NumberWheelSlider> {
  double _value = 0;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_drop_up, color: widget.arrowColor),
          onPressed: () {
            setState(() {
              if (_value < widget.max) {
                _value++;
                widget.onChanged(_value);
              }
            });
          },
        ),
        Text(
          _value.toString(),
          style: TextStyle(fontSize: 18),
        ),
        IconButton(
          icon: Icon(Icons.arrow_drop_down, color: widget.arrowColor),
          onPressed: () {
            setState(() {
              if (_value > widget.min) {
                _value--;
                widget.onChanged(_value);
              }
            });
          },
        ),
      ],
    );
  }
}
