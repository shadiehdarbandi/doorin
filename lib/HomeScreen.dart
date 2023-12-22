// import 'package:doorin_flutter/person.dart';
import 'package:doorin_flutter/person_widgt.dart';

import 'package:doorin_flutter/person.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = TextEditingController();
  var inputtt = 'h';
  var personBox = Hive.box<person>('personBox');

  @override
  Widget build(BuildContext context) {
    // Retrieve the list of persons from the box
    List<person> personsList = personBox.values.toList();

    // Sort the list by name
    personsList.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text(
                'لیست مشتری ها',
                style: TextStyle(
                  fontFamily: 'SB',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ValueListenableBuilder(
                  valueListenable: personBox.listenable(),
                  builder: (context, value, child) {
                    return ListView.builder(
                      itemCount: personsList.length,
                      itemBuilder: (context, index) {
                        var per = personsList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    personWidget(persons: per),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xffe2f6f1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: ListTile(
                                title: Text(
                                  per.name,
                                  style: TextStyle(
                                    fontFamily: 'SB',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
