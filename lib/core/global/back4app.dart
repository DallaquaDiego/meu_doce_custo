import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class Back4App {
  static Future<void> initParse() async {
    const applicationId = 'NeSkOviers2c2XZG4ueom1pKUNR5IPl7w7cTqjWO';
    const clientKey = '9Bdfdn9bMUX7yT7ZcTDb7ClQsdWrA18Ei1o2wwHS';
    const parseServerURL = 'https://parseapi.back4app.com';

    await Parse().initialize(applicationId, parseServerURL, clientKey: clientKey, autoSendSessionId: true, debug: false);

  }
}