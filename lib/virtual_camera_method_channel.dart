import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'virtual_camera_platform_interface.dart';

/// An implementation of [VirtualCameraPlatform] that uses method channels.
class MethodChannelVirtualCamera extends VirtualCameraPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('virtual_camera');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
