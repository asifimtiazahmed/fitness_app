import 'package:flutter/material.dart';
import 'package:flutter_app_fitness_app_ui/widgets/line_chart_widget.dart';


import '../widgets/exercises_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            ExercisesWidget(),
          ],
        ),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: LineChartWidget(),
        ),
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
        title: Text('Statistics'),
        centerTitle: true,
        pinned: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.person, size: 28),
          SizedBox(width: 12),
        ],
      );
}
