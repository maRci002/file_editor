import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'file_editor_method_channel.dart';

abstract class FileEditorPlatform extends PlatformInterface {
  /// Constructs a FileEditorPlatform.
  FileEditorPlatform() : super(token: _token);

  static final Object _token = Object();

  static FileEditorPlatform _instance = MethodChannelFileEditor();

  /// The default instance of [FileEditorPlatform] to use.
  ///
  /// Defaults to [MethodChannelFileEditor].
  static FileEditorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FileEditorPlatform] when
  /// they register themselves.
  static set instance(FileEditorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
