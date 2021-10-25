import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 
  class Example extends StatefulWidget {
    const Example({Key? key}) : super(key: key);
  
    @override
    _ExampleState createState() => _ExampleState();
  }
  
  class _ExampleState extends State<Example> {


     List<String> list=[];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children:  [
            Center(child: Padding(
              padding: const EdgeInsets.all(48),
              child: Text("${list}",style: const TextStyle(
                color: Colors.black,
              ),),
            )),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
           final result = await Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => const PopGetData()),

         );
          // print("${result}");
          list= result;
          print("$list");
        },
      ),
      );
    }
  }
  
  
  
  
  
  
  class PopGetData extends StatefulWidget {
    const PopGetData({Key? key}) : super(key: key);
  
    @override
    _PopGetDataState createState() => _PopGetDataState();
  }
  
  class _PopGetDataState extends State<PopGetData> {
    List<String> name =["1","2","3","4","5"];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Close the screen and return "Yep!" as the result.
                    Navigator.pop(context, name);
                    print(name.length);
                  },
                  child:  const Text("Goto"),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
  
  
