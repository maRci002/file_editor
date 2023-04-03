import 'package:flutter_test/flutter_test.dart';
import 'package:file_editor/file_editor.dart';
import 'package:file_editor/file_editor_platform_interface.dart';
import 'package:file_editor/file_editor_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFileEditorPlatform
    with MockPlatformInterfaceMixin
    implements FileEditorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FileEditorPlatform initialPlatform = FileEditorPlatform.instance;

  test('$MethodChannelFileEditor is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFileEditor>());
  });

  test('getPlatformVersion', () async {
    FileEditor fileEditorPlugin = FileEditor();
    MockFileEditorPlatform fakePlatform = MockFileEditorPlatform();
    FileEditorPlatform.instance = fakePlatform;

    expect(await fileEditorPlugin.getPlatformVersion(), '42');
  });
}
