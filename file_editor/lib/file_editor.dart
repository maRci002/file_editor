
import 'file_editor_platform_interface.dart';

class FileEditor {
  Future<String?> getPlatformVersion() {
    return FileEditorPlatform.instance.getPlatformVersion();
  }
}
