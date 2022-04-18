import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var a = 1;
  var name = ['Daniel Ek', 'Jim McKelvey', 'Reid Hoffman'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar(
          title: Text('Test App')
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Text(like[i].toString()),
              title: Text(name[i]),
              trailing: ElevatedButton(
                child: Text('좋아요'),
                onPressed: () {
                  setState(() {
                    like[i]++;
                  });
                },
              ),
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

