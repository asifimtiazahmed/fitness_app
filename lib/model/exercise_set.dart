import 'package:flutter/material.dart';

import 'exercise.dart';

enum ExerciseType {low, mid, hard}

String getExerciseName(ExerciseType type){
  String retRes;
  switch(type){
    case ExerciseType.hard:
      retRes = 'Hard';
      break;
    case ExerciseType.mid:
      retRes = 'Medium';
      break;
    case ExerciseType.low:
      retRes = 'Easy';
      break;
    default:
      retRes = 'All';
      break;
  }
  return retRes;
}

class ExerciseSet{
  final String name;
  final List<Exercise> exercises;
  final String imageUrl;
  final ExerciseType exerciseType;
  final Color color;

  const ExerciseSet({
    @required this.name,
    @required this.exercises,
    @required this.imageUrl,
    @required this.exerciseType,
    @required this.color
});

  String get totalDuration {
    final duration = exercises.fold(
      Duration.zero,
        (previous, element) => previous + element.duration,
    );
    return duration.inMinutes.toString();
  }

}

