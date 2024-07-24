import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ios_app_list_method_channel.dart';

abstract class FlutterIosAppListPlatform extends PlatformInterface {
  /// Constructs a FlutterIosAppListPlatform.
  FlutterIosAppListPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIosAppListPlatform _instance = MethodChannelFlutterIosAppList();

  /// The default instance of [FlutterIosAppListPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIosAppList].
  static FlutterIosAppListPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIosAppListPlatform] when
  /// they register themselves.
  static set instance(FlutterIosAppListPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
