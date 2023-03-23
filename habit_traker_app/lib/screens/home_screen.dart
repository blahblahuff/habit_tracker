import 'package:flutter/material.dart';
import 'package:habit_traker_app/components/alertdialog.dart';
import 'package:habit_traker_app/components/habit_tile.dart';

import '../components/myfloating.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //data for todays list
  List todaysHaibitList = [
    //habit name //habitcompleted
    ['Morning run', false],
    ['go to gym', false],
    ['my food ', false]
  ];

  //chechkbox is tapped condition
  checkBoxTapped(bool? newValue, index) {
    setState(() {
      todaysHaibitList[index][1] = newValue;
    });
  }

  //textfield controller
  final _myController = TextEditingController();
  // //show dialog box function
  void createNewHabit() {
    showDialog(
      context: context,
      builder: (context) {
        return MyAlertDialogbox(
          myController: _myController,
          onSave: saveNewHabit,
          onCancel: cancelNewHbit,
        );
      },
    );
  }

  //on save
  saveNewHabit() {}

  //oncancel
  cancelNewHbit() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text('Home')),
        backgroundColor: Colors.grey[300],
        floatingActionButton: MyFloatingActionButton(
          myOnpressed: createNewHabit,
        ),
        body: ListView.builder(
          itemCount: todaysHaibitList.length,
          itemBuilder: (context, index) {
            return HabitTile(
              habitName: todaysHaibitList[index][0],
              habitValue: todaysHaibitList[index][1],
              changed: (newvalue) => checkBoxTapped(newvalue, index),
            );
          },
        ));
  }
}
