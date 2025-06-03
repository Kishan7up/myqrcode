import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myqrscan/myqrscan.dart';
import 'package:myqrscan/myqrscan_platform_interface.dart';
import 'package:myqrscan/myqrscan_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyqrscanPlatform
    with MockPlatformInterfaceMixin
    implements MyqrscanPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
  @override
  void scanBarOrQrCode(
      {BuildContext? context, Color? bordercolor, required Function(String? p1) onScanSuccess}) {
    onScanSuccess("CODE");
  }
}

void main() {
  final MyqrscanPlatform initialPlatform = MyqrscanPlatform.instance;



  test('$MethodChannelMyqrscan is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyqrscan>());
  });

  test('getPlatformVersion', () async {
    Myqrscan myqrscanPlugin = Myqrscan();
    MockMyqrscanPlatform fakePlatform = MockMyqrscanPlatform();
    MyqrscanPlatform.instance = fakePlatform;

    expect(await myqrscanPlugin.getPlatformVersion(), '42');
  });

  test('scanBarOrQrCodeWeb', () async {
    Myqrscan qrBarCodeScannerDialogPlugin = Myqrscan();
    MockMyqrscanPlatform fakePlatform = MockMyqrscanPlatform();
    MyqrscanPlatform.instance = fakePlatform;

    qrBarCodeScannerDialogPlugin.getScannedQrBarCode(onCode: (code) {
      expect(code, 'CODE');
    });
  });

}
