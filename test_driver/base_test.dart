
import 'package:flutter_driver/flutter_driver.dart';

class BaseTest {
  FlutterDriver? driver;

  Future setUp() async{
    String emulator = "ws://127.0.0.1:34323/zgjfrl_m2Vc=/ws";
    driver ??= await FlutterDriver.connect(
      dartVmServiceUrl: emulator
    );
  }
  Future tearDown() async{
    driver?.close();
  }
}