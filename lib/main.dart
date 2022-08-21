import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Korapan Muangsong'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void ctof()  {
    //int y;
    //int x = _control;
    an = '_celsius = _fahrenheit';
    setState(() {
    });
  }
  var an = '';
  dynamic _control;
  //int guess = int.tryParse(_control);
  void ctok() {
    //int y;
    //y = ((_control)+(273.15));
    an = '_celsius = _kelvin';
    setState(() {
    });
  }
  void ftoc() {
   //int y;
    //y = (_control-32)*(5/9) as int;
    an = '_fahrenheit = _celsius';
    setState(() {

    });
  }
  void ftok(){
    //int y;
    //y =(_control+459.67)*(5/9) as int;
    an = '_fahrenheit = _kelvin';
    setState(() {

    });
  }
  void ktoc(){
    //int y;
    //y =_control-273.15 as int;
    an = '_kelvin = _celsius';
    setState(() {

    });
  }
  void ktof(){
    //int y;
    //y = (_control*(9/5))-459.67 as int;
    an = '_kelvin = _fahrenheit';
    print (an);
    setState(() {

    });
  }
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Temperature Converter',
              style: TextStyle(fontSize: 35),
            ),
            TextField(
              controller: _control, //ตัวรับค่
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a Number' ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            ElevatedButton(onPressed: ctof, child: Text('celsius to fahrenheit')),
            ElevatedButton(onPressed: ctok, child: Text('celsius to kelvin')),
        ]
    ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            ElevatedButton(onPressed: ftoc, child: Text('fahrenheit to celsius')),
            ElevatedButton(onPressed: ftok, child: Text('fahrenheit to kelvin')),
        ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            ElevatedButton(onPressed: ktoc, child: Text('kelvin to celsius')),
            ElevatedButton(onPressed: ktof, child: Text('kelvin to fahrenheit')),
        ]
            ),
        Text(an,
          style: TextStyle(fontSize: 30),
        )
          ],
        ),
      ),
    );
  }
}
