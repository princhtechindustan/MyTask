import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_task/home.dart';

import 'model.dart';

class DataClass extends StatefulWidget {
  const DataClass({Key? key}) : super(key: key);

  @override
  _DataClassState createState() => _DataClassState();
}

class _DataClassState extends State<DataClass> {
  // late Model dataList;
  final _fruits = ['Apple', 'Mango', 'Pine Apple'];
  var selected = 'Apple';
  GlobalKey key1 = GlobalKey();
  var temp = 0;
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  addUser(Model user) {
    setState(() {
      userList.add(user);
    });
  }

  deleteUser(Model user) {
    setState(() {
      // userList.removeWhere((_user) => _user.name == user.name);
      userList.removeWhere((element) => element.name==user.name);
    });
  }

  List<Model> userList = [];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //    dataList= Model();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff7CA2F4),
      appBar: AppBar(
        title: const Text("Add Data in to the filed"),
        backgroundColor: const Color(0xff7CA2F4),
        elevation: 1,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xff7CA2F4),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: Container(
                                      color: Colors.white,
                                      width: 110,
                                      height: 40,
                                      child: DropdownButton<String>(
                                        dropdownColor: Colors.white,
                                        elevation: 2,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                        items:
                                            _fruits.map((String dropdownItem) {
                                          return DropdownMenuItem<String>(
                                            value: dropdownItem,
                                            child: Text(dropdownItem),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selected = newValue!;
                                          });
                                        },
                                        value: selected,
                                      ),
                                    ),
                                  ),
                                ),
                                margin_20,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.teal,
                                      ),
                                      height: 30,
                                      child: Center(
                                        child: Text(
                                          "Price of ${selected}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.teal,
                                      ),
                                      height: 30,
                                      child: const Center(
                                        child: Text(
                                          "Rs50",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                margin_20,
                                Center(
                                  child: TextField(
                                    controller: _firstController,
                                    onChanged: (value) {
                                      _calculate();
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.money_off_sharp,
                                        color: Colors.black,
                                      ),
                                      labelText:
                                          'How much selected you want in Kilogram',
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                margin_20,
                                AbsorbPointer(
                                  child: TextField(
                                    controller: _valueController,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.money_off_sharp,
                                        color: Colors.black,
                                      ),
                                      labelText: 'Total Value are',
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                  ),
                                ),
                                margin_30,
                                InkWell(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: Color(0xff06d9170),
                                    ),
                                    width: 300,
                                    height: 45,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Go to Cart",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            letterSpacing: 3,
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    goToHomeScreen();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _calculate() {
    if (_firstController.text.trim().isNotEmpty) {
      final firstValue = double.parse(_firstController.text);
      _valueController.text = (firstValue * 50).toString();
    } else {
      _valueController.text = temp.toString();
    }
  }

  var margin_30 = const SizedBox(
    height: 30,
  );

  var margin_40 = const SizedBox(
    height: 40,
  );

  var margin_50 = const SizedBox(
    height: 50,
  );

  var margin_20 = const SizedBox(
    height: 20,
  );

  var margin_5 = const SizedBox(
    height: 5,
  );

  var margin_10 = const SizedBox(
    height: 20,
  );

  var weightMargin_10 = const SizedBox(
    width: 5,
  );

  var weightMargin_20 = const SizedBox(
    width: 10,
  );

  var weightMargin_30 = const SizedBox(
    width: 30,
  );

  void goToHomeScreen() {
    //   dataList.name = _firstController.text.toString();
    //   dataList.price = _valueController.text.toString();
    //   print("${dataList.name}");
    //   print("${dataList.price}");
    //   Navigator.of(context)
    //       .push(MaterialPageRoute(builder: (context) =>    HomePage(dataList: dataList)));
    // }
    final firstValue = int.parse(_firstController.text);
    final secondValue = double.parse(_valueController.text);
    addUser(Model(firstValue, secondValue));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            HomePage(users: userList, onDelete: deleteUser),
      ),
    );
  }
}
