
import 'package:flutter/widgets.dart';

import 'myqrscan_platform_interface.dart';

class Myqrscan {
  Future<String?> getPlatformVersion() {
    return MyqrscanPlatform.instance.getPlatformVersion();
  }

  void getScannedQrBarCode(
      {BuildContext? context,Color? bordercolor, required Function(String?) onCode}) {
    MyqrscanPlatform.instance
        .scanBarOrQrCode(context: context, onScanSuccess: onCode);
  }

}
