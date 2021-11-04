part of 'traffic_lights_bloc.dart';

@immutable
abstract class TrafficLightsEvent {}

class Red extends TrafficLightsEvent {}

class Yellow extends TrafficLightsEvent {}

class Green extends TrafficLightsEvent {}
