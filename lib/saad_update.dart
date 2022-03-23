
import 'dart:async';

import 'package:flutter/services.dart';

class SaadUpdate {
  static const MethodChannel _channel = MethodChannel('saad_update');
  static const MethodChannel _channelDeviceName = MethodChannel('get_device_name');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> getStringFromDevice () async{

    return await _channelDeviceName.invokeMethod("getDeviceName");

}
}
