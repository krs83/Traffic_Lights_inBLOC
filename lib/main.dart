import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_lights_in_bloc/bloc/traffic_lights_bloc.dart';
import 'package:traffic_lights_in_bloc/screen/traffic_lights_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traffic light',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => TrafficLightsBloc(),
        child: const TrafficLightsScreen(
            title: 'Traffic Light switching buttons in BLOC'),
      ),
    );
  }
}
