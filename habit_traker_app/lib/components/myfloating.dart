import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final Function()? myOnpressed;
  const MyFloatingActionButton({
    super.key,
    required this.myOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: myOnpressed,
      child: Icon(Icons.add),
    );
  }
}
