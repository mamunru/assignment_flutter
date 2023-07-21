import 'package:get/get.dart';

import '../config/routeName.dart';
import '../screens/homePage.dart';
import '../screens/splashScreen.dart';

class Approutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: RoutesName.homepage, page: () => Homepage()),
      ];
}
