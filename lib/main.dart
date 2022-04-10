import 'package:mini_project_ui/diet.dart';
import 'package:mini_project_ui/fitnessPage.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mini_project_ui/moneyPage.dart';
import 'package:mini_project_ui/routine.dart';
import 'fitnessPage.dart';

void main() {
  runApp(MaterialApp
    (home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Profile Manager',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: 'RobotoSlab',
                    fontSize: 30,
                  )),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.greenAccent,
                      Colors.black12,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.greenAccent,
                Colors.indigo,
              ],
            )),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                Container(
                  height: 220,
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage('images/2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FitnessPage(),
                        ),
                      );
                    }, // Handle your callback.
                    splashColor: Colors.black.withOpacity(0.3),
                    child: Ink(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 224,
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage('images/1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DietPage(),
                        ),
                      );
                    }, // Handle your callback.
                    splashColor: Colors.black.withOpacity(0.3),
                    child: Ink(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 220,
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage('images/4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoneyPage(),
                        ),
                      );
                    }, // Handle your callback.
                    splashColor: Colors.black.withOpacity(0.3),
                    child: Ink(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 220,
                  width: 100,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage('images/3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoutinePage(),
                        ),
                      );
                    }, // Handle your callback.
                    splashColor: Colors.black.withOpacity(0.3),
                    child: Ink(
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
