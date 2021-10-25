
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_task/add_data.dart';
import 'package:my_task/model.dart';

class HomePage extends StatefulWidget {

   const HomePage({Key? key, })
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {




   List<Model> users=[

   ];


  int count=0;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  void increment(){
    setState(() {
      count++;
    });
  }
  void decrement(){
    setState(() {
      count--;
    });
  }


  //  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //     users = [];
  // }
  List<Widget> _myList = [];

   deleteUser(Model user) {
       // users.removeWhere((_user) => _user.quantity == user.quantity);
       int currentIndex = users.indexOf(user);
       users.removeAt(currentIndex);
       print("------------------>$currentIndex");

   }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff21bfbe),
      appBar: AppBar(
      title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("MyTask"),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff21bfbe),
        elevation: 1,
      ),
      body: Stack(
        children: [
          margin_20,
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 40),
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
                      color: const Color(0xff64dbdc),
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.roboto(
                        fontWeight: FontWeight.w900,
                      ).fontFamily,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(40),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _myList,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(30),
          //     child: FloatingActionButton(
          //         child: const Icon(
          //           Icons.add,
          //           color: Colors.white,
          //         ),
          //         onPressed: () {
          //           Navigator.of(context).push( MaterialPageRoute
          //             (builder: (BuildContext context){
          //             return  DataClass();
          //           }));
          //         }),
          //   ),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton (
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () async{
           // final result =   Navigator.of(context).push(MaterialPageRoute
           //    (builder: (BuildContext context){
           //    return  DataClass();
           //  }));
            dynamic result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const DataClass()),
            );
              print("${result}");

            setState(() {
              users = result;
          //    print();
          _myList.add(  Card(
            elevation: 8,
            child:
            Padding(
              padding: const EdgeInsets.all(16),
              child:
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fruits Cost : ${users.first.quantity}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Fruits total price: ${users.first.price}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      // Text(
                      //   'Fruits total price: ${widget.users[index].price*count+50}',
                      //   style: const TextStyle(fontSize: 12),
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      // IconButton(
                      //   icon: const Icon(Icons.delete),
                      //   onPressed: () => widget
                      //       .onDelete(widget.users[index]),
                      // ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              color: Colors.teal,
                            ),
                            child: InkWell(
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onTap: (){
                                setState(() {

                                });
                                print("deleted------------------------>");
                                },
                            ),
                          ),
                          weightMargin_10,
                          // Container(

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),);

            });
             // print("home------------------------->${users[0].price}");
            print("home------------------------->${users.length}");

          }),
    );
  }

   void _deleteTextControllers(Model user) {
     setState(() {
       //How to delete the list data on clicking Delete button?
       int currentIndex = users.indexOf(user);
       users.removeAt(currentIndex);
     });
   }
  // Column(
  // crossAxisAlignment: CrossAxisAlignment.start,
  // children: [
  // margin_50,
  // ListView.builder(
  // shrinkWrap: true,
  // itemBuilder: (BuildContext context, int index) =>
  //
  // itemCount: users.length,
  // ),
  // ],
  // ),
  // void refreshData() {
  //   widget.users;
  // }

  // FutureOr onGoBack(dynamic value) {
  //   refreshData();
  //   setState(() {});
  // }
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
