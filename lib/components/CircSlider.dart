import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
class CircSlider extends StatefulWidget {
  @override
  _CircSliderState createState() => _CircSliderState();
}

class _CircSliderState extends State<CircSlider> {
  int _hour;

  _CircSliderState(){
    DateTime Time = DateTime.now();
    _hour = Time.hour;
  }
  _changeTime(int a ,int b ,int c)
  {
    setState(() {

      _hour = b;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      SingleCircularSlider(
        23,
        _hour,
        baseColor:Color(0xffC1CAD6),
        onSelectionChange:_changeTime,
        handlerColor: Color(0xffFF1053),
        handlerOutterRadius: 1.0,
        showHandlerOutter: false,
        child:
        Center(
          child: Container(
            width:  140,
            height: 140,
            decoration: BoxDecoration(
                color: Color(0xff6C6EA0),
                shape: BoxShape.circle),
            child: Center(
              child: Text(
                _hour.toString() + ":00",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 40
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
