
import 'multimedia_platform_interface.dart';

class Multimedia {
  Future<String?> getPlatformVersion() {
    return MultimediaPlatform.instance.getPlatformVersion();
  }
}
