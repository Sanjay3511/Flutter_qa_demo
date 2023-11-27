
import 'package:high_level_test/constants/widget_keys.dart';

import '../base_test.dart';
import 'package:flutter_driver/flutter_driver.dart';
class HomePageTest extends BaseTest{
  Future tapLike() async{
    await setUp();
    await driver?.tap(find.byValueKey(likeBtn));
  }
  Future tapNext() async{
    await setUp();
    await driver?.tap(find.byValueKey(nextBtn));
  }
  Future getTextPair() async{
    await setUp();
    var result = await driver?.getText(find.byValueKey(getText));
    print(result);
    return result;
  }
  Future tapHome() async{
    await setUp();
    await driver?.tap(find.byValueKey(homeBtn));
  }
  Future tapFavourites() async{
    await setUp();
    await driver?.tap(find.byValueKey(favouriteBtn));
  }
}
