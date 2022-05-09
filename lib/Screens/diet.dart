import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_project_ui/Screens/first_screen.dart';
import 'package:mini_project_ui/Screens/moneyPage.dart';
import 'package:mini_project_ui/Screens/routine.dart';
import 'package:mini_project_ui/Created_Icons/diet_icons.dart';

import 'fitnessPage.dart';

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with TickerProviderStateMixin {
  late TabController _controller;
  int navigationIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Center(
            child: Text('Diet'),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.all(2),
            controller: _controller,
            tabs: [
              Tab(
                child: Text(
                  "BREAKFAST",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "LUNCH",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "SNACKS",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: Text(
                  "DINNER",
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Container(
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
                  'Hello this is Diet Page',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
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
                  'Hello this is Lunch Page',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
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
                  'Hello this is Snacks Page',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Container(
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
                  'Hello this is Dinner Page',
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
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

                  Icons.fastfood_rounded,
                  color: Colors.white70,

              ),
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
                  Icons.fitness_center_rounded,
                  color: Colors.black,
                ),
                label: 'Fitness'),
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
                    SnackBar(content: Text("U are on the  Diet"));
                    break;
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>MoneyPage()),);
                    break;
                  case 2:
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FitnessPage()),);
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
