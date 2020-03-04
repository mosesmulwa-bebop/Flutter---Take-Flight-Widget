import 'package:flutter/material.dart';

class FlightExample extends StatefulWidget {
  @override
  FlightExampleState createState() {
    return new FlightExampleState();
  }
}

class FlightExampleState extends State<FlightExample> {

  var _alignment = Alignment.bottomCenter;
  var color1 = Colors.blueAccent;
  var color2 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 2),
        alignment: _alignment,
        color: color1,
        child: Container(
          height: 50.0,
          child: Icon(Icons.airplanemode_active, size: 50.0, color: Colors.teal,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
          onPressed: (){
            setState(() {
              _alignment = Alignment.center;
              //color1 = color2;
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
          
    );
  }
}