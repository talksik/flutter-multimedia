import 'package:flutter_test/flutter_test.dart';
import 'package:multimedia/multimedia.dart';
import 'package:multimedia/multimedia_platform_interface.dart';
import 'package:multimedia/multimedia_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMultimediaPlatform
    with MockPlatformInterfaceMixin
    implements MultimediaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MultimediaPlatform initialPlatform = MultimediaPlatform.instance;

  test('$MethodChannelMultimedia is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMultimedia>());
  });

  test('getPlatformVersion', () async {
    Multimedia multimediaPlugin = Multimedia();
    MockMultimediaPlatform fakePlatform = MockMultimediaPlatform();
    MultimediaPlatform.instance = fakePlatform;

    expect(await multimediaPlugin.getPlatformVersion(), '42');
  });
}
