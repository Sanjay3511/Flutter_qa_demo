
import 'package:flutter_test/flutter_test.dart';
import '../ui_test/favorite_page.dart';
import '../ui_test/home_page_test.dart';

void main() async{
  group("complete flow test", () {
    test("Tap favorite Button and no favorites yet is  displayed ", () async{
      await HomePageTest().tapFavourites();
      await FavouritePageTest().noFavouritesYet();
      await HomePageTest().tapHome();
    });
    test("Tap like and expect it is added in fav page and count is displayed", () async {
      int i = 0;
      /* for loop to like 10 times and validate its added in favourites page */
      for(i=1;i<=10; i++){
        await HomePageTest().tapLike();
        var actualResult = await HomePageTest().getTextPair();
        await HomePageTest().tapFavourites();
        // getting the no of counts added
        var totalCount = await FavouritePageTest().getFavCount();
        var actualMessage  =  "Count=${i}";
        print(actualMessage);
        var expectedResult = await FavouritePageTest().getFavorites(actualResult);
        //verifying added to favourites in fav page
        assert(actualResult == expectedResult);
        //verifying counts of no of words added to fav
        assert(totalCount==actualMessage);
        await HomePageTest().tapHome();
        await HomePageTest().tapNext();
      }
    });
  });
}