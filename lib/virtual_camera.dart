
import 'virtual_camera_platform_interface.dart';

class VirtualCamera {
  Future<String?> getPlatformVersion() {
    return VirtualCameraPlatform.instance.getPlatformVersion();
  }
}
