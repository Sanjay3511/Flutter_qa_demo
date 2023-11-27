
import 'package:flutter_driver/flutter_driver.dart';

class BaseTest {
  FlutterDriver? driver;

  Future setUp() async{
    String webSocketUrl = "http://127.0.0.1:37219/8dW9uS0fQNo=/";
    driver ??= await FlutterDriver.connect(
      dartVmServiceUrl: webSocketUrl
    );
  }
  Future tearDown() async{
    driver?.close();
  }
}