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
          child: Center(
              child:  Builder ( 
                builder: (BuildContext ctxOfScaffold)  {
                  return  ElevatedButton(
                    onPressed: ()  {
                      this._showMyBottomSheet(ctxOfScaffold);
                    },
                    child: Icon(Icons.add),
                  );
                },
              )
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

  void _showMyBottomSheet(BuildContext ctxOfScaffold) {
    Scaffold.of(ctxOfScaffold).showBottomSheet(
      (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('BottomSheet'),
                ElevatedButton(
                  child: Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
