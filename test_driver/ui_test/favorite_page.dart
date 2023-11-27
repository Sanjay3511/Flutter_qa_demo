

import 'package:high_level_test/constants/widget_keys.dart';

import '../base_test.dart';
import 'package:flutter_driver/flutter_driver.dart';

class FavouritePageTest extends BaseTest{

  
  Future getFavorites(String favData) async{
    await setUp();
    var  expectedResult = await driver?.getText(find.byValueKey(favData));
    return expectedResult;
  }
  Future noFavouritesYet() async{
    await setUp();
    var actualResult = await driver?.getText(find.byValueKey(noFavYet));
    var expectedResult = "No favorites yet.";
    assert(actualResult == expectedResult);
  }
  Future getFavCount() async{
    await setUp();
    var actualResult = await driver?.getText(find.byValueKey(favCount));
    print(actualResult);
    return actualResult;

  }

}