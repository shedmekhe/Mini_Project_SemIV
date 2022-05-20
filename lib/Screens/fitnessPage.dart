
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project_ui/Screens/diet.dart';
import 'package:mini_project_ui/Screens/first_screen.dart';
import 'package:mini_project_ui/Screens/moneyPage.dart';
import 'package:mini_project_ui/Screens/routine.dart';


class FitnessPage extends StatefulWidget {
  const FitnessPage({Key? key}) : super(key: key);

  @override
  State<FitnessPage> createState() => _FitnessPageState();
}

class _FitnessPageState extends State<FitnessPage> {
  int navigationIndex=0;
  @override
  Widget build(BuildContext context) {

    return SafeArea(

        child: Scaffold(

          backgroundColor: Colors.greenAccent,

          body: Stack(
            children: <Widget>[
              Column(
                children: <Widget> [
                  Container(
                    height: MediaQuery.of(context).size.height*0.40,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.indigo,
                  ),
                  Expanded(
                      child: GridView.count(crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      children: <Widget>[

                       // Yoga

                        Container(
                          margin: EdgeInsets.only(left:10, right: 10, bottom: 20),
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                            )]
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20,),
                                Expanded(child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('FitnessAssets/Meditate.jpg'),
                                      fit: BoxFit.contain
                                    ),
                                  ),
                                )),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text('Yoga',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),textAlign: TextAlign.center ),
                                ),

                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),


                        //Cardio
                        Container(
                          margin: EdgeInsets.only(left:10, right: 10, bottom: 20),
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                              )]
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20,),
                                Expanded(child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('FitnessAssets/Cardio.jpg'),
                                        fit: BoxFit.contain
                                    ),
                                  ),
                                )),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text('Cardio',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),textAlign: TextAlign.center ),
                                ),

                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),


                        //Weight Training
                        Container(
                          margin: EdgeInsets.only(left:10, right: 10, bottom: 20),
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                              )]
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20,),
                                Expanded(child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('FitnessAssets/Weight Training.jpg'),
                                        fit: BoxFit.contain
                                    ),
                                  ),
                                )),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text('Weight Training',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),textAlign: TextAlign.center ),
                                ),

                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:10, right: 10, bottom: 20),
                          width: MediaQuery.of(context).size.width*0.3,
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                              )]
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20,),
                                Expanded(child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('FitnessAssets/Sports.jpg'),
                                        fit: BoxFit.contain
                                    ),
                                  ),
                                )),
                                SizedBox(height: 20,),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  child: Text('Sports',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,

                                  ),textAlign: TextAlign.center ),
                                ),

                                SizedBox(height: 10,),
                              ],
                            ),
                          ),
                        ),
                        // categoryWidget("img1","Yoga"),
                        // categoryWidget("img2","Weight Training"),
                        // categoryWidget("img3","Sports"),
                        // categoryWidget("img4","Cardio"),
                      ],)
                  ),
                ],
              )
            ],


            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.topRight,
            //       end: Alignment.bottomLeft,
            //       colors: [
            //         Colors.greenAccent,
            //         Colors.indigo,
            //       ],
            //     )),
            // child: Center(
            //   child: Text(
            //     'Hello ',
            //     style: TextStyle(
            //       fontSize: 22,
            //       fontStyle: FontStyle.italic,
            //     ),
            //   ),
            // ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 28,
              backgroundColor: Colors.indigo,
              landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              selectedItemColor: Colors.white70,
              unselectedItemColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.fitness_center_rounded,
                      color: Colors.white70,
                    ),
                    icon: Icon(
                      Icons.fitness_center_rounded,
                      color: Colors.black,
                    ),
                    label: 'Fitness'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.fastfood_rounded,
                      color: Colors.black,
                    ),
                    label: 'Diet'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.attach_money_outlined,
                      color: Colors.black,
                    ),
                    label: 'Money'),

                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.timer_rounded,
                      color: Colors.black,
                    ),
                    label: 'Routine'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),

                    label: 'Home'),
                // BottomNavigationBarItem(icon: Icon(),label: Icons.lunch_dining_outlined),
              ],
              onTap:(int index)
              {
                setState(() {
                  navigationIndex=index;
                  switch(navigationIndex)
                  {
                    case 0:
                      SnackBar(content: Text("U are on the  Fitness"));
                      break;
                    case 1:
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>DietPage()),);
                      break;
                    case 2:
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>MoneyPage()),);
                      break;
                    case 3:
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RoutinePage()),);
                      break;
                    case 4:
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp(),),);
                  }
                }
                );
              }
          ),
        ),
    );
  }


}


