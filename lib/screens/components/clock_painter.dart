import 'package:flutter/material.dart';

import 'dart:math';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter(this.context, this.dateTime);

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // minute calculation
    double minX = centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minY = centerY + size.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);


    // Minute Line
    canvas.drawLine(
        center,
        Offset(minX, minY),
        Paint()
        ..color = Theme.of(context).colorScheme.copyWith().secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10
    );

    // Hour  Calculation
    // dateTime.hour * 30 because 360/12 = 30
    // dateTime.minute * 0.5 each minute we want to turn our hour line a little
    double hourX = centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    //hour line
    canvas.drawLine(
      center,
      Offset(hourX, hourY),
      Paint()
        ..color = Theme.of(context).colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );

    // Second calculation
    // size.width * 0.4 define our line height
    // dateTime.second * 6 because 360 / 60 = 6
    double secondX = centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY = centerY + size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);


    Paint dotPainter = Paint();

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}










