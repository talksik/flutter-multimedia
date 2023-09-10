import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multimedia_platform_interface.dart';

/// An implementation of [MultimediaPlatform] that uses method channels.
class MethodChannelMultimedia extends MultimediaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multimedia');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
