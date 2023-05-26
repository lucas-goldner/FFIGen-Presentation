import 'package:flutter/material.dart';
import 'package:flutter_airpods/models/device_motion_data.dart';

class AgendaFloatingHead extends StatelessWidget {
  const AgendaFloatingHead(this.deviceMotionData, {super.key});
  final DeviceMotionData? deviceMotionData;

  @override
  Widget build(BuildContext context) {
    return Text('${deviceMotionData?.toJson()}');
  }
}
