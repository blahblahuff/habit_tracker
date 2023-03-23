import 'package:flutter/material.dart';

class MyAlertDialogbox extends StatelessWidget {
  final TextEditingController myController;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const MyAlertDialogbox(
      {super.key,
      required this.myController,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: myController,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          color: Colors.black,
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          onPressed: onCancel,
          color: Colors.black,
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
