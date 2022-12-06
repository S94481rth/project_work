import 'package:flutter/material.dart';
import 'Exercise.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Exercise> workouts = [
    Exercise(name:'Push Ups',imageLocation:'../assets/push_up.jpeg',reps:10),
    Exercise(name:'Pull Ups',imageLocation:'../assets/pull_up.jpeg',reps:8),
    Exercise(name:'Sit Ups',imageLocation:'../assets/sit_up.jpeg',reps:7),
    //Exercise(name:'Sit Ups',imageLocation:'../assets/sit_up.jpeg',reps:10)

  ];

  Widget workoutTemplate(workout){
    return Card(
      margin: EdgeInsets.fromLTRB(30, 10, 10, 20),
      child : Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Image.asset(workout.imageLocation)),
          SizedBox(width: 50),
          SizedBox(height: 50),
          Expanded(
            child: Text(
              workout.name,
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 2.0
              ),
            ),
          ),
          Expanded(
            child: Text(
              workout.reps.toString(),
              style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 2.0
              ),
            ),
          ),

        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'HOME PAGE',
          style: TextStyle(
            fontSize: 20.0,
            letterSpacing: 2,
            color: Colors.amber
          ),

        ),
        backgroundColor: Colors.deepPurpleAccent[100],
      ),

      body: Column(

        children: workouts.map((workout) => workoutTemplate(workout)).toList(),

      ),
    );
  }
}
