
//import 'dart:html';
import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( MaterialApp(home: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
// backgroundColor: Colors.deepPurple[900],
          title: Center(child: Text(
              'Profile Manager',
              style: TextStyle(
                fontFamily: 'Pacifico',
                  fontSize: 32,
              )
          ),
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
              )
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 12,
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical:10,horizontal:20 ),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                // child: Center(
                //   child: Text(
                //     '  Welcome User !\n'
                //         '   DAY  : 16',
                //
                //     style: GoogleFonts.ubuntu(fontSize: 34),
                //
                //   ),
                // ),
              ),

              Container(
                height: 220,
                width: 100,
                margin: EdgeInsets.symmetric(vertical:0,horizontal: 10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage('images/fh2.png'),
                    fit: BoxFit.cover,
                  ),),
                child: InkWell(
                  onTap: () {
                    setState(() {
                    });
                  }, // Handle your callback.
                  splashColor: Colors.black.withOpacity(0.3),
                  child: Ink(
                    height: 100,
                    width: 100,
                  ),
                ),
              ),


              // Container(
              //   margin: EdgeInsets.symmetric(vertical:10,horizontal: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(8.0))
              //   ),
              //     child: ConstrainedBox(
              //       constraints: BoxConstraints.expand(),
              //       child: FlatButton(
              //         onPressed:(){},
              //         child: Image.asset('images/money4.jpg',
              //           fit: BoxFit.fill,
              //       ),
              //     ),
              //
              //     // child:Image.asset('images/money4.jpg',
              //     //   fit: BoxFit.fill,
              //   ),
              //   // Image.asset('images/money4.jpg',
              //   // fit: BoxFit.fill,
              //   // ),
              //   // height: 180,
              //   ),

              SizedBox(
                height: 12,
              ),
              Container(
                height: 220,
                width: 100,
                margin: EdgeInsets.symmetric(vertical:0,horizontal: 10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage('images/mh2.png'),
                    fit: BoxFit.cover,
                  ),),
                child: InkWell(
                  onTap: () {
                    setState(() {
                    });
                  }, // Handle your callback.
                  splashColor: Colors.black.withOpacity(0.3),
                  child: Ink(
                    height: 100,
                    width: 100,
                  ),
                ),
              ),


              //
              // Container(
              //   margin: EdgeInsets.symmetric(vertical:10,horizontal: 20),
              //   decoration: BoxDecoration(
              //     // border: Border.all(
              //     //   color: Colors.black,
              //     // ),
              //       borderRadius: BorderRadius.all(Radius.circular(8.0))
              //   ),
              //   // color: Colors.blue,
              //   height: 180,
              //   child: Image.asset('images/time2.jpg',
              //     fit: BoxFit.fill,
              //   ),
              //
              // ),

              SizedBox(
                height: 12,
              ),
              Container(
                height: 220,
                width: 100,
                margin: EdgeInsets.symmetric(vertical:0,horizontal: 10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage('images/t101.png'),
                    fit: BoxFit.cover,
                  ),),
                child: InkWell(
                  onTap: () {
                    setState(() {
                    });
                  }, // Handle your callback.
                  splashColor: Colors.black.withOpacity(0.3),
                  child: Ink(
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              //
              // Container(
              //   margin: EdgeInsets.symmetric(vertical:10,horizontal: 20),
              //   decoration: BoxDecoration(
              //     // border: Border.all(
              //     //   color: Colors.black,
              //     // ),
              //       borderRadius: BorderRadius.all(Radius.circular(8.0))
              //   ),
              //   // color: Colors.blue,
              //   height: 170,
              //   child: Image.asset('images/work2.jpg',
              //     fit: BoxFit.fill,
              //   ),
              //  ),


              SizedBox(
                height: 12,
              ),
              Container(
                height: 224,
                width: 100,
                margin: EdgeInsets.symmetric(vertical:0,horizontal: 10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                    image: AssetImage('images/fdh2.png'),
                    fit: BoxFit.cover,
                  ),),
                child: InkWell(
                  onTap: () {
                    setState(() {
                    });
                  }, // Handle your callback.
                  splashColor: Colors.black.withOpacity(0.3),
                  child: Ink(
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical:10,horizontal: 20),
              //   decoration: BoxDecoration(
              //     // border: Border.all(
              //     //   color: Colors.black,
              //     // ),
              //       borderRadius: BorderRadius.all(Radius.circular(8.0))
              //   ),
              //   // color: Colors.blue,
              //   height: 170,
              //   child: Image.asset('images/diet1.jpg',
              //     fit: BoxFit.fill,
              //   ),
              //  ),

            ],
          ),
        ),
      ),

    );
  }
}
