import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_project_ui/Screens/first_screen.dart';
import 'package:mini_project_ui/Screens/moneyPage.dart';
import 'package:mini_project_ui/Screens/routine.dart';
import 'package:mini_project_ui/Created_Icons/diet_icons.dart';
import 'package:mini_project_ui/Screens/diet.dart';
import 'fitnessPage.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  int navigationIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(
            child: Text('Money'),
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
          child: Center(
            child: Text(
              'Hello this is Money Page',
              style: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
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
                  Icons.attach_money_outlined,
                  color: Colors.white70,
                ),
                  icon: Icon(
                    Icons.attach_money_outlined,
                    color: Colors.black,
                  ),
                  label: 'Money'),
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
                    SnackBar(content: Text("U are on the  Money"));
                    break;
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>FitnessPage()),);
                    break;
                  case 2:
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>DietPage()),);
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
