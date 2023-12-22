import 'package:doorin_flutter/edit_person.dart';
import 'package:doorin_flutter/person.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class personWidget extends StatefulWidget {
  personWidget({Key? key, required this.persons}) : super(key: key);
  person persons;
  @override
  State<personWidget> createState() => _personWidgetState();
}

class _personWidgetState extends State<personWidget> {
  @override
  Widget build(BuildContext context) {
    return pageasli();
  }

  Container pageasli() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        SizedBox(
          height: 60,
        ),
        buildRowOfContainers([
          buildTopContainer(widget.persons.name),
        ]),
        SizedBox(
          height: 19,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildContainer('قد :' + widget.persons.ghad),
          Spacer(),
          buildContainer('آستین :' + widget.persons.astin),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildContainer(' دور بازو : ' + widget.persons.doreazoo),
          SizedBox(
            width: 3,
          ),
          buildContainer('دور سینه :' + widget.persons.dorsine),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildContainer('دور یاسن : ' + widget.persons.dorebasan),
          SizedBox(
            width: 3,
          ),
          buildContainer('سرشانه : ' + widget.persons.sarshane),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          buildContainer(':سخمه' + widget.persons.sarshane),
          SizedBox(
            width: 3,
          ),
          buildContainer('بالاتنه:' + widget.persons.balatane),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildContainer('شلوار :' + widget.persons.shalvar),
          SizedBox(
            width: 3,
          ),
          buildContainer(' قد زیرپیراهن :   ' + widget.persons.zirpirahan),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildTopContainer(' شماره تماس :  ' + widget.persons.shomare),
        ]),
        SizedBox(
          height: 9,
        ),
        buildRowOfContainers([
          SizedBox(
            width: 3,
          ),
          buildTopContainer('توضیحات :  ' + widget.persons.toozihat),
        ]),
        SizedBox(
          height: 50,
        ),
        buildRowOfContainers([
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.transparent, // Add a color to Material widget
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EdditePerson(
                              person2: widget.persons,
                            )));
                  },
                  child: Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0xff18daa3),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          SizedBox(width: 9),
                          Text(
                            ' ویرایش',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'SB',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 39),
              Material(
                color: Colors.transparent, // Add a color to Material widget
                child: InkWell(
                  onTap: () {
                    var personBox = Hive.box<person>('personBox');

                    // Delete the person from Hive
                    personBox.delete(widget.persons.key);
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0xff18daa3),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            ' حذف',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'SB',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ]),
    );
  }

  Widget buildContainer(String text, {double width = 200}) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xffe2f6f1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(width: 9),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 4, 1, 48),
                  fontFamily: 'SB'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTopContainer(String text, {double width = 400}) {
    return Container(
      width: width,
      height: 38,
      decoration: BoxDecoration(
        color: Color(0xffe2f6f1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(width: 9),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 4, 1, 48),
                  fontFamily: 'SB'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomContainer(String text, {double width = 100}) {
    return Container(
      width: width,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xff18daa3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(width: 9),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'SB',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRowOfContainers(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
