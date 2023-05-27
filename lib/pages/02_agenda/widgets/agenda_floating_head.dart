import 'package:flutter/material.dart';
import 'package:flutter_airpods/models/device_motion_data.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:fluttercon_2023_presentation/generated/assets.gen.dart';

class AgendaFloatingHead extends StatefulWidget {
  const AgendaFloatingHead(this.deviceMotionData, {super.key});
  final DeviceMotionData? deviceMotionData;

  @override
  State<AgendaFloatingHead> createState() => _AgendaFloatingHeadState();
}

class _AgendaFloatingHeadState extends State<AgendaFloatingHead> {
  late Object shark;

  @override
  void initState() {
    shark = Object(fileName: Assets.model.sharkObj);
    shark.rotation.setValues(0, 90, 0);
    shark.updateTransform();
    super.initState();
  }

  void updateOrientation(DeviceMotionData? data) {
    if (data == null) {
      return;
    }

    const scaleFactor = 75;
    final pitch = data.attitude.pitch * scaleFactor as double;
    final yaw = data.attitude.yaw * scaleFactor as double;
    final test = data.attitude.quaternion.z * scaleFactor as double;
    shark.rotation.setValues(-pitch / 2 - 30, test / 2 + 160, yaw);
    shark.updateTransform();
  }

  @override
  Widget build(BuildContext context) {
    updateOrientation(widget.deviceMotionData);

    return Cube(
      onSceneCreated: (scene) {
        scene.world.add(shark);
        scene.camera.zoom = 10;
      },
    );
  }
}
