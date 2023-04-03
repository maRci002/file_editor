import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'file_editor_platform_interface.dart';

/// An implementation of [FileEditorPlatform] that uses method channels.
class MethodChannelFileEditor extends FileEditorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('file_editor');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
