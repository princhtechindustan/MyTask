import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_task/add_data.dart';
import 'package:my_task/model.dart';

class HomePage extends StatefulWidget {
  final List<Model> users;
  final Function(Model) onDelete;
  HomePage({Key? key, required this.users, required this.onDelete})
      : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  deleteUser(Model user) {
    setState(() {
      widget.onDelete(user);
    });
  }

  List<Model> userList = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff021BFBE),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("MyTask"),
        ),
        backgroundColor: Color(0xff021BFBE),
        elevation: 1,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    margin_50,
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: RichText(
                        text: TextSpan(
                            text: 'Healthy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              fontFamily: GoogleFonts.roboto(
                                fontWeight: FontWeight.w900,
                              ).fontFamily,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Fruits',
                                style: TextStyle(
                                  color: Color(0xff064DBDC),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w900,
                                  ).fontFamily,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(130),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 40, right: 40, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              // Text(widget.dataList.name.toString()),
                              // Text(widget.dataList.price.toString()),
                              // Card(
                              //   elevation: 5,
                              //   child: ListTile(
                              //     leading: Icon(Icons.fastfood),
                              //     title: Text(widget.dataList.name.toString()),
                              //     subtitle:
                              //         Text(widget.dataList.price.toString()),
                              //     trailing: Icon(Icons.food_bank),
                              //   ),
                              // ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemBuilder:
                                    (BuildContext context, int index) => Card(
                                  elevation: 8,
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fruits Cost : ${widget.users[index].name}',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              'Fruits total price: ${widget.
                                              users[index].price}',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.delete),
                                          onPressed: () => widget.
                                          onDelete(widget.users[index]),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                itemCount: widget.users.length,
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
        ],
      ),
    );
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
}
