import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            child : Text('FAB'),
            onPressed: (){}
        ),
        appBar: AppBar(
          title: Text('Test App')
        ),
        body: Container(
            height: 150,
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Image.asset('assets/car.jpeg', width: 100),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('라페라리'),
                      Text('직수'),
                      Text('20억'),
                      Row(
                        children: [
                          Icon(Icons.label),
                          Text('4')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
