import 'package:flutter/material.dart';

void main() => runApp(HECSApp());

class HECSApp extends StatelessWidget {

  Widget locationBar() {
    return Padding(
      child: Row(
        children: [
          Text("Location: ", style: TextStyle(fontSize: 16)),
          Padding(
              child: DropdownButton<String>(
                  items: [
                    DropdownMenuItem(child: Text("Broadway Green")),
                  ],
                  onChanged: locationDropdownOnChange),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0)
          )
        ],
      ),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
    );
  }

  void locationDropdownOnChange(String newValue) {

  }

  Widget infoBar() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Card(
            margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Center(
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.place),
                        tooltip: 'Location Information',
                        onPressed: () {
                        },
                        iconSize: 50,
                        color: Color.fromRGBO(255, 50, 50, 1),
                      ),
                    ],
                  )
              ),
            ),
          ),
          key: Key("locationInfo"),
        ),
        Expanded(
          child: Card(
            margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 50, 10, 50),
              child: Center(
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.schedule),
                        tooltip: 'Queue Information',
                        onPressed: () {
                        },
                        iconSize: 50,
                        color: Color.fromRGBO(50, 50, 255, 1),
                      ),
                    ],
                  )
              ),
            ),
          ),
          key: Key("queueInfo"),
        ),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("EV Charger Scheduler"),
        ),
        body: ListView(
          children: [
            locationBar(),
            infoBar(),
          ],
        ),
      )
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


