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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
      endDrawer: Drawer(
        child: ListView(
          children: const <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Hello World',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Gallery'),
            ),
            ListTile(
              title: Text('Slideshow'),
            ),
          ],
        ),
      ),
      bottomNavigationBar : BottomNavigationBar(
          currentIndex : 0,
          fixedColor  : Colors.green,
          items : [
            BottomNavigationBarItem(
              label  : "Home",
              icon  : Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label : "Search",
              icon  : Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label  : "Profile",
              icon  : Icon(Icons.account_circle),
            ),
          ],
          onTap  : (int indexOfItem) {

          }),
    );
  }
}
