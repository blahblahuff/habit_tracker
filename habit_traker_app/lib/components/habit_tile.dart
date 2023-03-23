import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool? habitValue;
  final Function(bool?)? changed;
  const HabitTile({
    super.key,
    required this.habitName,
    required this.habitValue,
    required this.changed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              value: habitValue,
              onChanged: changed,
            ),
            Text(habitName),
          ],
        ),
      ),
    );
  }
}
