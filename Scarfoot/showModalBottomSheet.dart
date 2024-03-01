import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var name = "";
  void _incrementCounter() {
    setState(() {
     
      _counter++;
      name = "hhh";
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         
          title: Text(widget.title),
        ),
        body: Center(
         
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Click the floating action button to show bottom sheet.',
              ),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (BuildContext ctxOfScaffold) {
            return FloatingActionButton(
              onPressed: () {
                this._showMyBottomSheet(ctxOfScaffold);
              },
              tooltip: 'Increment Counter',
              child: Icon(Icons.add),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen[200],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.home),
                label: Text(""),
                onPressed: () {},
              ),
              TextButton.icon(
                icon: Icon(Icons.email),
                label: Text(""),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }

  void _showMyBottomSheet(BuildContext context) {
    showModalBottomSheet (
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height  * 0.4,
            child: Center(
              child: Text("Welcome to o7planning.org!"),
            ),
          );
        }
    );
  }
   
}
