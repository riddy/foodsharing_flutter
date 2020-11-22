import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 83, 58, 32),
        accentColor: Color.fromARGB(255, 205, 7, 30),
        buttonColor: Color.fromARGB(255, 100, 174, 36),
        textSelectionColor: Color.fromARGB(255, 100, 174, 36),
        backgroundColor: Color.fromARGB(255, 249, 245, 224),
        fontFamily: 'Georgia',
      ),
      home: MyHomePage(title: 'foodsharing'),
    );
  }
}

class ChatPartner {
  String id;
  String name;
  ChatPartner(String id, String name) {
    this.name = name;
    this.id = id;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ChatPartner> chatPartners;
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
              Tab(
                icon: Icon(Icons.question_answer),
              ),
              Tab(
                icon: Icon(Icons.location_pin),
              ),
              Tab(
                icon: Icon(Icons.help_outline),
              ),
            ], indicatorColor: Theme.of(context).accentColor),
            title: Text(
              widget.title,
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            shadowColor: Theme.of(context).accentColor,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.add),
            backgroundColor: Theme.of(context).buttonColor,
          ),
          body: Container(
            color: Theme.of(context).backgroundColor,
            child: TabBarView(
              children: [
                Expanded(child: buildChatMessages()),
                Container(
                  child: Icon(Icons.location_pin),
                ),
                Container(
                  child: Icon(Icons.help_outline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Maria'),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Tim'),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text('Nadine'),
                    ),
                  ],
                ),
 */
Widget buildChatMessages() {
  return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        //final index = i ~/ 2; /*3*/
        //if (index >= _suggestions.length) {
        // _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        // }
        return _buildRow(
          "tina",
        );
      });
}

Widget _buildRow(String name) {
  return ListTile(
    leading: Icon(Icons.chat),
    title: Text(name),
  );
}
