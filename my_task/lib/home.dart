import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_task/add_data.dart';
import 'package:my_task/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Model dataList;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataList =Model();
  }
  @override
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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.chevron_left,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    margin_10,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: FloatingActionButton(
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>  const DataClass()));
                              },
                          ),
                        ),
                      ),
                      Column(
                        children:   const [

                        ],
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
