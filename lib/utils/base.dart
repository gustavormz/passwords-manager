export 'base.dart';
import 'package:flutter/material.dart';

Color getColorFromHexa(String hexa) {
  return Color(int.parse(hexa, radix: 16) + 0xFF000000);
}

String formatDateTime(DateTime dateTime) {
  final now = DateTime.now();
  if (dateTime.year == now.year &&
      dateTime.month == now.month &&
      dateTime.day == now.day) {
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  } else {
    return '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year.toString()} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
