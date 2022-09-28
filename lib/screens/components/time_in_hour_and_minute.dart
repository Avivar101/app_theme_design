import 'dart:async';

import 'package:flutter/material.dart';

import '../../size_config.dart';

class TimeInHourAndMinute extends StatefulWidget {
  const TimeInHourAndMinute({Key? key}) : super(key: key);

  @override
  State<TimeInHourAndMinute> createState() => _TimeInHourAndMinute();
}

class _TimeInHourAndMinute extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _timeOfDay = TimeOfDay.now();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(width: 5,),
        RotatedBox(
            quarterTurns: 3,
          child: Text(
            period,
            style: TextStyle(fontSize: SizeConfig.getProportionateScreenWidth(18)),
          ),
        )
      ]
    );
  }
}
















