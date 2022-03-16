import 'package:flutter_test/flutter_test.dart';
import 'package:virtual_camera/virtual_camera.dart';
import 'package:virtual_camera/virtual_camera_platform_interface.dart';
import 'package:virtual_camera/virtual_camera_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVirtualCameraPlatform 
    with MockPlatformInterfaceMixin
    implements VirtualCameraPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VirtualCameraPlatform initialPlatform = VirtualCameraPlatform.instance;

  test('$MethodChannelVirtualCamera is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVirtualCamera>());
  });

  test('getPlatformVersion', () async {
    VirtualCamera virtualCameraPlugin = VirtualCamera();
    MockVirtualCameraPlatform fakePlatform = MockVirtualCameraPlatform();
    VirtualCameraPlatform.instance = fakePlatform;
  
    expect(await virtualCameraPlugin.getPlatformVersion(), '42');
  });
}
