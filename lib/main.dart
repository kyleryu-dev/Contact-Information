import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var a = 1;

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            a++;
          },
        ),
        appBar: AppBar(
          title: Text('Test App')
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Daniel Ek'),
            );
          },
        ),
        bottomNavigationBar: BtmNav()
        ),
      );
  }
}

class BtmNav extends StatelessWidget {
  const BtmNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.category),
        ],
      ),
    );
  }
}

