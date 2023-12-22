import 'package:doorin_flutter/search.dart';
import 'package:flutter/material.dart';
import 'package:doorin_flutter/HomeScreen.dart';
import 'package:doorin_flutter/add_person.dart';
import 'package:doorin_flutter/person.dart';
import 'package:doorin_flutter/person_widgt.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('shelf');
  Hive.registerAdapter(personAdapter());
  await Hive.openBox<person>('personBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'دورین',
              style: TextStyle(fontSize: 18, fontFamily: 'SB'),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        body: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                ),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff18daa3),
                      minimumSize: Size(300, 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddPerson(),
                        ),
                      );
                    },
                    child: Text(
                      'اندازه جدید',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SB', fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    child: SearchPerson(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
