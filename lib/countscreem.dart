import 'package:flutter/material.dart';

class countscreem extends StatefulWidget {

  // This widget is the root of your application.

  static const String routNamed= "counter";

  @override
  State<countscreem> createState() => _countscreemState();
}

class _countscreemState extends State<countscreem> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screem"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 40,

              ),
            ),
            FloatingActionButton(
                onPressed: (){
                  counter++;
                  setState(() {

                  });
                  print(counter);

                },
                child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );

  }
}
