import 'package:doorin_flutter/person.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AddPerson extends StatefulWidget {
  const AddPerson({Key? key}) : super(key: key);

  @override
  _AddPersonState createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  final FocusNode myFocusNode = FocusNode();
  final FocusNode myFocusNode2 = FocusNode();
  final TextEditingController controllerTaskTitle = TextEditingController();
  final TextEditingController controllerTaskghad = TextEditingController();
  final FocusNode myFocusNode3 = FocusNode();
  final FocusNode myFocusNode4 = FocusNode();
  final TextEditingController controllerDoreSine = TextEditingController();
  final TextEditingController controllerSarshaneh = TextEditingController();
  final FocusNode myFocusNode5 = FocusNode();
  final FocusNode myFocusNode6 = FocusNode();
  final TextEditingController controllerDorbazoo = TextEditingController();
  final TextEditingController controllerDorbasan = TextEditingController();
  final FocusNode myFocusNode7 = FocusNode();
  final FocusNode myFocusNode8 = FocusNode();
  final TextEditingController controllerAstin = TextEditingController();
  final TextEditingController controllerBalataneh = TextEditingController();
  final FocusNode myFocusNode9 = FocusNode();
  final FocusNode myFocusNode10 = FocusNode();
  final TextEditingController controllerSokhmeh = TextEditingController();
  final TextEditingController controllerShalvar = TextEditingController();
  final FocusNode myFocusNode11 = FocusNode();
  final FocusNode myFocusNode12 = FocusNode();
  final TextEditingController controllerZirpirahan = TextEditingController();
  final TextEditingController controllerShomareh = TextEditingController();
  final FocusNode myFocusNode13 = FocusNode();
  final TextEditingController controllerTozihat = TextEditingController();
  final box = Hive.box<person>('personBox');
  @override
  void initState() {
    super.initState();
    myFocusNode.addListener(() {
      setState(() {});
    });
    myFocusNode2.addListener(() {
      setState(() {});
    });
    myFocusNode3.addListener(() {
      setState(() {});
    });
    myFocusNode4.addListener(() {
      setState(() {});
    });
    myFocusNode5.addListener(() {
      setState(() {});
    });
    myFocusNode6.addListener(() {
      setState(() {});
    });
    myFocusNode7.addListener(() {
      setState(() {});
    });
    myFocusNode8.addListener(() {
      setState(() {});
    });
    myFocusNode9.addListener(() {
      setState(() {});
    });
    myFocusNode10.addListener(() {
      setState(() {});
    });
    myFocusNode11.addListener(() {
      setState(() {});
    });
    myFocusNode12.addListener(() {
      setState(() {});
    });
    myFocusNode13.addListener(() {
      setState(() {});
    });
  }

  Widget buildTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String labelText,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            labelText: labelText,
            labelStyle: TextStyle(
              fontFamily: 'SB',
              color: focusNode.hasFocus ? Color(0xff18daa3) : Color(0xffc5c5c5),
              fontSize: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xffc5c5c5), width: 3),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                width: 3,
                color: Color(0xff18daa3),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),

              buildTextField(
                controller: controllerTaskTitle,
                focusNode: myFocusNode11,
                labelText: 'نام',
              ),

              buildTextField(
                controller: controllerShomareh,
                focusNode: myFocusNode12,
                labelText: 'شماره',
              ),

              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      controller: controllerTaskghad,
                      focusNode: myFocusNode,
                      labelText: 'قد',
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      controller: controllerDoreSine,
                      focusNode: myFocusNode2,
                      labelText: 'دور سینه',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                        controller: controllerSarshaneh,
                        focusNode: myFocusNode3,
                        labelText: ' سر شانه'),
                  ),
                  Expanded(
                    child: buildTextField(
                      controller: controllerDorbazoo,
                      focusNode: myFocusNode4,
                      labelText: 'دور بازو',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      controller: controllerDorbasan,
                      focusNode: myFocusNode5,
                      labelText: 'دور باسن',
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      controller: controllerAstin,
                      focusNode: myFocusNode6,
                      labelText: 'آستین',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      controller: controllerBalataneh,
                      focusNode: myFocusNode7,
                      labelText: ' بالاتنه',
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      controller: controllerSokhmeh,
                      focusNode: myFocusNode8,
                      labelText: 'سوخمه',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      controller: controllerZirpirahan,
                      focusNode: myFocusNode9,
                      labelText: ' زیر پیراهن',
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      controller: controllerShalvar,
                      focusNode: myFocusNode10,
                      labelText: 'شلوار',
                    ),
                  ),
                ],
              ),
              buildTextField(
                  controller: controllerTozihat,
                  focusNode: myFocusNode13,
                  labelText: 'توضیحات'),
              SizedBox(
                  height:
                      16), // Add some spacing between the row and the button
              ElevatedButton(
                onPressed: () {
                  String name = controllerTaskTitle.text;
                  String tozihat = controllerTozihat.text;
                  String ghad = controllerTaskghad.text;
                  String dorsine = controllerDoreSine.text;
                  String dorebazoo = controllerDorbazoo.text;
                  String dorbasan = controllerDorbasan.text;
                  String balatane = controllerBalataneh.text;
                  String sokhmeh = controllerSokhmeh.text;
                  String shalvar = controllerShalvar.text;
                  String astin = controllerAstin.text;
                  String zirpirahan = controllerZirpirahan.text;
                  String shomareh = controllerShomareh.text;
                  String sarshaneh = controllerSarshaneh.text;
                  addPrsons(
                      name,
                      tozihat,
                      ghad,
                      dorsine,
                      dorebazoo,
                      dorbasan,
                      balatane,
                      sokhmeh,
                      shalvar,
                      astin,
                      zirpirahan,
                      shomareh,
                      sarshaneh);
                  Navigator.of(context).pop();
                },
                child: Text(
                  'ذخیره',
                  style: TextStyle(
                      fontFamily: 'SB', fontSize: 16, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff18daa3),
                  minimumSize: Size(200, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addPrsons(
      String name,
      String shomareh,
      String doresine,
      String sarshaneh,
      String doebazoo,
      String dorebasan,
      String ghad,
      String balataneh,
      String sokhme,
      String shalvar,
      String zirpiran,
      String tozihat,
      String astin) {
    var person1 = person(
        name: name,
        shomare: shomareh,
        astin: astin,
        doreazoo: doebazoo,
        dorsine: doresine,
        ghad: ghad,
        sarshane: sarshaneh,
        balatane: balataneh,
        zirpirahan: zirpiran,
        shalvar: shalvar,
        sokhme: sokhme,
        toozihat: tozihat,
        dorebasan: dorebasan);
    box.add(person1);
  }
}
