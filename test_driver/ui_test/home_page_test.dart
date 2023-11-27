
import '../base_test.dart';
import 'package:flutter_driver/flutter_driver.dart';
class HomePageTest extends BaseTest{
  Future tapLike() async{
    await setUp();
    await driver?.tap(find.byValueKey("Like"));
  }
}
