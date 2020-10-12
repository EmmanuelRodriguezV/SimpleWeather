import 'package:flutter/material.dart';
import "package:lottie/lottie.dart";
import 'dart:math';
class WeatherCard extends StatelessWidget {
  final snackBar = SnackBar(content: Text('¡¡Clima compartido correctamente!!'));
  int _temperature;
  String _message = "";
  String _day = "";
  String _state = "";
  var _color;
  var image = ["weather-cloudynight.json",
  "weather-night.json",
    "weather-partly-cloudy.json",
    "weather-snow.json",
    "weather-sunny.json",
    "weather-windy.json"
  ];
  var rnd_number = new Random();
  
  var grados = {"FRIO": 13, "AGRADABLE": 28, "CALOR": 40};


  String _selectmessage(int temperature) {
    if (temperature <= grados["FRIO"]) {
      _message = "Frio";
      _color = Colors.lightBlueAccent;
    }
    else
    if (temperature <= grados["AGRADABLE"] && temperature > grados['FRIO']) {
      _message = "Agradable";
      _color = Colors.green;
    }
    else
    if (temperature <= grados['CALOR'] && temperature > grados["AGRADABLE"]) {
      _message = "Caliente";
      _color = Colors.red;
    }
    return _message;
  }

  WeatherCard(this._temperature, this._state);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
                decoration: BoxDecoration(
//                  border: Border(
//                    left: BorderSide(
//                      color: Colors.blueGrey,
//                      width: 3
//                    )
//            )
          ),
          child: Column(
            children: <Widget>[
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.share,color: Color(0xff6C6EA0),),
                    iconSize: 25,
                    onPressed: () =>{
                      _settingModalBottomSheet(context)
                    },
                  ),

                  Text(this._state,
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 30
                      )
                  ),

                ],
              )
             ,
              Text(
                DateTime.now().toString(),
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w300,
                  fontSize: 10
                ),
              )
              ,
              Lottie.asset('assets/images/'+ image[rnd_number.nextInt(image.length)],
                width: 200,
                height: 200
              ),
              Text(_temperature.toString()+"°",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 55,
                  color: Colors.black54
                ),
              ),
              Text(_selectmessage(_temperature),style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: _color
              ),),
            ],
          ),
        ),
      );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "¿Quieres compartir el clima?",
                          style: TextStyle(
                            fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new ListTile(
                    leading: Icon(
                      Icons.face
                    ),
                    title: new Text('Facebook'),
                    onTap: () => {
                    Navigator.pop(context),
                    Scaffold.of(context).showSnackBar(snackBar)
                    }
                ),

                new ListTile(
                    leading: Icon(
                        Icons.face
                    ),
                    title: new Text('Instagram'),
                    onTap: () => {
                      Navigator.pop(context),
                      Scaffold.of(context).showSnackBar(snackBar)
                    }
                ),
                new ListTile(
                  leading: new Icon(Icons.camera_alt),
                  title: new Text('Whatsapp'),
                  onTap: () => {
                  Navigator.pop(context),
                  Scaffold.of(context).showSnackBar(snackBar)
                  },

                ),
              ],
            ),
          );
        }
    );
  }
}

