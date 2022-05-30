import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:mini_project_ui/Screens/button.dart';
import 'package:mini_project_ui/Screens/input_field.dart';
import 'package:mini_project_ui/Screens/routine.dart';
//0xFF21BFBD
//0xFF7A9BEE
class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _endTime = "9:30 PM";
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  String _selectedRepeat = "None";
  List<String> repeatList = [
    "None","Daily","Weekly","Monthly"
  ];
  int _selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
          elevation: 0,
        backgroundColor: Color(0xFF7A9BEE),
          actions: [
            Icon(
              Icons.menu,
              size : 40,
            )
          ],

          title: Center(child: Text("Add Tasks",
          style: TextStyle(
                fontSize: 30
          ),))
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF7A9BEE)
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.white,
            //     Color(0xFF363f93),
            //
            //   ]
            // ),
          ),
          child: Column(
            children: [
              SizedBox(
                // height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(

                      margin: EdgeInsets.only(top: 30),
                      height:702,
                      decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          // bottomLeft: Radius.circular(24),
                          // bottomRight: Radius.circular(24),
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                          // topRight: Radius.circular(24),
                        )
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 100
                            ),
                          ],
                        ),

                        Container(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
                          child: Column(
                            children: <Widget>[
                          MyInputField(title: "Title", hint: "Enter your title",controller: _titleController),
                            SizedBox(
                              height: 8,
                            ),
                            MyInputField(title: "Note", hint: "Enter your note",controller: _noteController,),
                              SizedBox(
                                height: 8,
                              ),
                            MyInputField(title: "Date", hint: DateFormat.yMd().format(_selectedDate),
                              widget: IconButton(
                                icon: Icon(Icons.calendar_today_outlined,
                                  color: Colors.blueGrey[900],
                                ),
                                onPressed: (){
                                  _getDateFromUser();
                                },
                              ),),
                              SizedBox(
                                height: 8,
                              ),
                            Row(
                              children: [
                                Expanded(child: MyInputField(
                                  title: "State Time",
                                  hint: _startTime,
                                  widget: IconButton(
                                    onPressed: (){
                                      _getTimeFromUser(isStartTime: true);
                                    },
                                    icon: Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.blueGrey[900],
                                    ),
                                  ),controller: _startTimeController,
                                )),
                                SizedBox(width: 12,),
                                Expanded(child: MyInputField(
                                  title: "End Time",
                                  hint: _endTime,
                                  widget: IconButton(
                                    onPressed: (){
                                      _getTimeFromUser(isStartTime: false);
                                    },
                                    icon: Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.blueGrey[900],
                                    ),
                                  ),
                                  controller: _endTimeController,
                                )),
                              ],
                            ),
                              SizedBox(
                                height: 8,
                              ),
                            MyInputField(title: "Repeat", hint: "$_selectedRepeat",
                              widget: DropdownButton(
                                icon: Icon(Icons.keyboard_arrow_down,
                                  color: Colors.blueGrey[900],
                                ),
                                iconSize: 32,
                                elevation: 4,
                                style: subTitleStyle,
                                underline: Container(height: 0,),
                                onChanged: (String? newValue){
                                  setState(() {
                                    _selectedRepeat = newValue!;
                                  });
                                },
                                items: repeatList.map<DropdownMenuItem<String>>((String? value){
                                  return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value!,style:TextStyle(color:Colors.grey)));
                                }
                                ).toList(),

                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _colorPallete(),
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: ElevatedButton(

                                    child: const Text('Save Task',
                                    style: TextStyle(color: Colors.white,
                                    fontSize: 18),),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Color(0xFF21BFBD)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15.0),

                                            )
                                        )
                                    ),
                                    onPressed: () {
                                      _validateDate();

                                    },
                                  ),
                                ),

                                // MyButton(label: "Create Task", onTap: ()=> _validateDate())
                              ],
                            )
                        ]),

        )
        ],

        ),

        ],
    ),
    )
    ],
    ),
    ),
      ));
  }
  _validateDate(){

    if(_titleController.text.isNotEmpty&&_noteController.text.isNotEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("You have successfullly filled task details")));

      Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return RoutinePage();
        }),);
    }
    else if(_titleController.text.isEmpty || _noteController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("All fields are mandatory")));
    }
  }
  _colorPallete(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color",
          style: titleStyle,
        ),
        SizedBox(
          height: 8,
        ),
        Wrap(
          children: List<Widget>.generate(3,
                  (int index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedColor = index;

                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                        radius: 14,
                        backgroundColor: index==0?Colors.red:index==1?Colors.blue:Colors.orange,
                        child: _selectedColor==index?Icon(Icons.done,
                          color: Colors.white,
                          size: 16,
                        ):Container()
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2022), lastDate: DateTime(2500));
    if(_pickerDate!=null){
      setState(() {
        _selectedDate = _pickerDate;
      });
    }
    else{
      print("");
    }
  }
  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if(pickedTime==null){

    }
    else if(isStartTime==true){
      setState(() {
        _startTime = _formatedTime;
      });
    }
    else if(isStartTime==false){
      setState(() {
        _endTime = _formatedTime;
      });
    }

  }
  _showTimePicker(){
    return showTimePicker(initialEntryMode:TimePickerEntryMode.input, context: context, initialTime: TimeOfDay(
      hour: int.parse(_startTime.split(":")[0]),
      minute: int.parse(_startTime.split(":")[1].split(" ")[0]),
    ));
  }
}
