import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:traffic_lights_in_bloc/utility/constants.dart';

part 'traffic_lights_event.dart';

class TrafficLightsBloc extends Bloc<TrafficLightsEvent, Color> {
  TrafficLightsBloc() : super(green) {
    on<Red>((event, emit) => emit(red));
    on<Yellow>((event, emit) => emit(yellow));
    on<Green>((event, emit) => emit(green));
  }
}
