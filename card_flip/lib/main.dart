import 'package:flutter/material.dart';
import 'dart:math' as math;

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Custom Transition flutter ver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      reverseDuration: Duration(seconds: 1),
    );
    _controller.addListener(() {
      _colorChange();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Color boxColor = Colors.red;

  void _colorChange(){
    if(_controller.value > 0.5){
      setState(() {
        boxColor = Colors.black;
      });
    } else {
      setState(() {
        boxColor = Colors.red;
      });
    }
  }

  void _flipCard(){
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style : TextStyle(fontWeight:FontWeight.w600,)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double angle = _controller.value * math.pi;
                Matrix4 transform = Matrix4.identity()
                  ..setEntry(3, 2, 0.003) // Perspective
                  ..rotateY(angle);
                return Transform(
                  transform: transform,
                  alignment: Alignment.center,
                  child: child,
                );
              },
              child: Container(
                  width : MediaQuery.of(context).size.width / 2,
                  height : MediaQuery.of(context).size.height / 3,
                  decoration : BoxDecoration(
                      color : boxColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
              )
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                _flipCard();
              },
              child: Text("Reveal", style: TextStyle(color: Colors.blueAccent, fontSize: 18),),
            )
          ],
        ),
      ),
    );
  }
}
