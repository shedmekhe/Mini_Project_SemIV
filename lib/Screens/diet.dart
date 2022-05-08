import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(length:4 , vsync: this);
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
    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
    ],
    bottom: TabBar(
       controller: _controller,
      tabs: [
        Tab(
          text:"BREAKFAST"
        ),
        Tab(
          text: "LUNCH",
        ),
        Tab(
          text: "SNACKS",
        ),
        Tab(
          text: "DINNER",
        )
      ],
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
    'Hello this is Diet Page',
    style: TextStyle(
    fontSize: 22,
    fontStyle: FontStyle.italic,
    ),
    ),
    ),
    ),
    ),
    );
    }

  }



