import 'dart:async';

import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  String _time = "";

  static const oneSec = const Duration(seconds: 1);
  String _getSystime()
  {
    Timer timer = new Timer(oneSec,() =>{
    setState(() {
    DateTime Time = DateTime.now();
    _time += Time.hour.toString() + ":";
    _time += Time.minute.toString();
    })
    });
    setState(() {
      _time = "";
      DateTime Time = DateTime.now();
      _time += Time.hour.toString() + ":";
      _time += Time.minute.toString();
    });
    return _time;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
child: Text(_getSystime(),
  style: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w200
  ),
)
    );
  }
}
