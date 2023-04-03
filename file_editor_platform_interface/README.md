# file_editor_platform_interface

A common platform interface for the [`file_editor`][1] plugin.

This interface allows platform-specific implementations of the `file_editor`
plugin, as well as the plugin itself, to ensure they are supporting the
same interface.

# Usage

To implement a new platform-specific implementation of `file_editor`, extend
[`FileEditorPlatform`][2] with an implementation that performs the
platform-specific behavior, and when you register your plugin, set the default
`FileEditorPlatform` by calling
`FileEditorPlatform.instance = MyPlatformFileEditor()`.

[1]: ../file_editor
[2]: lib/file_editor_platform_interface.dart