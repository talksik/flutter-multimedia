import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multimedia_method_channel.dart';

abstract class MultimediaPlatform extends PlatformInterface {
  /// Constructs a MultimediaPlatform.
  MultimediaPlatform() : super(token: _token);

  static final Object _token = Object();

  static MultimediaPlatform _instance = MethodChannelMultimedia();

  /// The default instance of [MultimediaPlatform] to use.
  ///
  /// Defaults to [MethodChannelMultimedia].
  static MultimediaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultimediaPlatform] when
  /// they register themselves.
  static set instance(MultimediaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
