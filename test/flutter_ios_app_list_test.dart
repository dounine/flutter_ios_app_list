import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ios_app_list/flutter_ios_app_list.dart';
import 'package:flutter_ios_app_list/flutter_ios_app_list_platform_interface.dart';
import 'package:flutter_ios_app_list/flutter_ios_app_list_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIosAppListPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIosAppListPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIosAppListPlatform initialPlatform = FlutterIosAppListPlatform.instance;

  test('$MethodChannelFlutterIosAppList is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIosAppList>());
  });

  test('getPlatformVersion', () async {
    FlutterIosAppList flutterIosAppListPlugin = FlutterIosAppList();
    MockFlutterIosAppListPlatform fakePlatform = MockFlutterIosAppListPlatform();
    FlutterIosAppListPlatform.instance = fakePlatform;

    expect(await flutterIosAppListPlugin.getPlatformVersion(), '42');
  });
}
