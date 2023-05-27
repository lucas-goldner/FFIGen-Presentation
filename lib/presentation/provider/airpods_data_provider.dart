import 'dart:async';

import 'package:flutter_airpods/models/device_motion_data.dart';
import 'package:fluttercon_2023_presentation/helper/constants.dart';
import 'package:fluttercon_2023_presentation/presentation/model/airpods_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:socket_io_client/socket_io_client.dart';

class AirpodsDataProvider extends StateNotifier<AirpodsData> {
  AirpodsDataProvider()
      : super(
          AirpodsData(
            StreamController<DeviceMotionData>(),
            null,
          ),
        );

  void initializeConnection() {
    if (!isConnected()) {
      state = state.copyWith(
        socket: io.io(
          AppConstants.websocketServerUrl,
          OptionBuilder()
              .disableAutoConnect()
              .setTransports(['websocket']).build(),
        ),
      );

      state.socket?.connect();
    }
  }

  bool isConnected() => state.socket?.connected ?? false || false;

  void getAirPodsDataStream() {
    if (isConnected() && !state.deviceMotionStream.isClosed) {
      state.socket?.on('get_events', (data) {
        state.deviceMotionStream.sink
            .add(DeviceMotionData.fromJson(data as Map<String, dynamic>));
      });
    }
  }
}

final airpodsDataProvider =
    StateNotifierProvider<AirpodsDataProvider, AirpodsData>((ref) {
  return AirpodsDataProvider();
});