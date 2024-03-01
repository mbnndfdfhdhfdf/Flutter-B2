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
        title: Text("AppBar Title"),
        leading: MyVolumeButton()
      ),
      body: Center(
        child:  Text("Hello World."),
       
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
      
    );
  }
  
}

class MyVolumeButton extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return MyVolumeButtonState();
  }
}

class MyVolumeButtonState extends State<MyVolumeButton> {
  bool volumeOn = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: this.volumeOn? Icon(Icons.volume_up):Icon(Icons.volume_mute),
        onPressed: () {
          // Set new State
          setState(() => this.volumeOn = !this.volumeOn);
        }
    );
  }
}