
import 'flutter_ios_app_list_platform_interface.dart';

class FlutterIosAppList {
  Future<String?> getPlatformVersion() {
    return FlutterIosAppListPlatform.instance.getPlatformVersion();
  }
}
