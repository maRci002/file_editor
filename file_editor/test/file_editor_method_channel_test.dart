import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:file_editor/file_editor_method_channel.dart';

void main() {
  MethodChannelFileEditor platform = MethodChannelFileEditor();
  const MethodChannel channel = MethodChannel('file_editor');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
