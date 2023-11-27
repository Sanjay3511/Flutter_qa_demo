
import 'package:flutter_test/flutter_test.dart';

import '../ui_test/home_page_test.dart';

void main() async{
  group("Add words to favourites", () {
    test("tap on favorites  button", ()async{
      await HomePageTest().tapLike();
    });
  });

}