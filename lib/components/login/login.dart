
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatelessWidget {

   static String assetName = 'assets/images/login_weather.svg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Simple Weather',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w200,
                  fontSize: 60
                ),),
                Container(
                  width: 300,
                  height: 300,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  width: 300,
                  child:  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  )
                ),
                Container(
                    width: 300,
                    padding: EdgeInsets.only(bottom: 20.0),
                    child:  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    )
                ),
                Container(
                  width: 200,
                  child: RaisedButton(
                    color: Colors.deepPurple,
                    onPressed: ()=> {},
                    child: Text('Login',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
//     SvgPicture.asset(assetName),