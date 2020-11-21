import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodsharing',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: Colors.green[800],
        accentColor: Colors.green[100],
        fontFamily: 'Georgia',
      ),
      home: MyHomePage(title: 'Foodsharing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  bottom: TabBar(tabs: [
                    Tab(icon: Icon(Icons.question_answer)),
                    Tab(icon: Icon(Icons.location_pin)),
                    Tab(icon: Icon(Icons.help_outline)),
                  ], indicatorColor: Theme.of(context).accentColor),
                  title: Text(widget.title),
                ),
                body: TabBarView(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(32),
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.chat),
                            title: Text('Maria'),
                          ),
                          ListTile(
                              leading: Icon(Icons.chat), title: Text('Tim')),
                          ListTile(
                            leading: Icon(Icons.chat),
                            title: Text('Nadine'),
                          ),
                        ],
                      ),
                    ),
                    Container(child: Icon(Icons.location_pin)),
                    Container(child: Icon(Icons.help_outline)),
                  ],
                ))));
  }
}
