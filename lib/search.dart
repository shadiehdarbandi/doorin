import 'package:flutter/material.dart';
import 'package:doorin_flutter/person.dart'; // Import your person class
import 'package:doorin_flutter/person_widgt.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class SearchPerson extends StatefulWidget {
  const SearchPerson({Key? key}) : super(key: key);

  @override
  _SearchPersonState createState() => _SearchPersonState();
}

class _SearchPersonState extends State<SearchPerson> {
  var controller = TextEditingController();
  late List<person> allPersons;
  late List<person> filteredList;

  @override
  void initState() {
    super.initState();
    allPersons = Hive.box<person>('personBox').values.toList();
    filteredList = allPersons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    filterList(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'جستجو...',
                    hintStyle: TextStyle(fontFamily: 'SB', color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.amber,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: Hive.box<person>('personBox').listenable(),
                builder: (context, box, child) {
                  return Container(
                    child: ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        var per = filteredList[index];
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void filterList(String enteredKeyword) {
    setState(() {
      filteredList = allPersons
          .where((person) =>
              person.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    });
  }
}
