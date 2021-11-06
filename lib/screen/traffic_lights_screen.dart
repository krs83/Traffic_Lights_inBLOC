import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_lights_in_bloc/bloc/traffic_lights_bloc.dart';
import 'package:traffic_lights_in_bloc/utility/color_tools.dart';
import 'package:traffic_lights_in_bloc/utility/constants.dart';

class TrafficLightsScreen extends StatefulWidget {
  const TrafficLightsScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TrafficLightsScreen> createState() => _TrafficLightsScreenState();
}

class _TrafficLightsScreenState extends State<TrafficLightsScreen> {
  @override
  Widget build(BuildContext context) {
    TrafficLightsBloc _bloc = context.read<TrafficLightsBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<TrafficLightsBloc, Color>(
              builder: (context, color) => ColorContainer(color: color),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ColorButtons(
            color: red,
            tooltip: redTip,
            onPressed: () => _bloc.add(Red()),
          ),
          const SizedBox(width: 10.0),
          ColorButtons(
            color: yellow,
            tooltip: yellowTip,
            onPressed: () => _bloc.add(Yellow()),
          ),
          const SizedBox(width: 10.0),
          ColorButtons(
            color: green,
            tooltip: greenTip,
            onPressed: () => _bloc.add(Green()),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    TrafficLightsBloc().close();
    super.dispose();
  }
}
