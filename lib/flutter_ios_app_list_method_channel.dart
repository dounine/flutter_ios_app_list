import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ios_app_list_platform_interface.dart';

/// An implementation of [FlutterIosAppListPlatform] that uses method channels.
class MethodChannelFlutterIosAppList extends FlutterIosAppListPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ios_app_list');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
