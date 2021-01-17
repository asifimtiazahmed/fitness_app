import 'package:flutter/material.dart';

import '../model/exercise_set.dart';

class ExerciseSetWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;
  const ExerciseSetWidget({@required this.exerciseSet});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 100,
      ),
    );
  }
}

