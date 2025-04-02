import 'package:flutter/widgets.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'myqrscan_method_channel.dart';

abstract class MyqrscanPlatform extends PlatformInterface {
  /// Constructs a MyqrscanPlatform.
  MyqrscanPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyqrscanPlatform _instance = MethodChannelMyqrscan();

  /// The default instance of [MyqrscanPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyqrscan].
  static MyqrscanPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyqrscanPlatform] when
  /// they register themselves.
  static set instance(MyqrscanPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void scanBarOrQrCode(
      {BuildContext? context, required Function(String?) onScanSuccess}) {
    throw UnimplementedError('scanBarOrQrCodeWeb() has not been implemented.');
  }
}
