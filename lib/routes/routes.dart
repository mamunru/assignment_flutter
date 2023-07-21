import 'package:assignment/controller/initialController.dart';
import 'package:assignment/screens/profilepage.dart';
import 'package:get/get.dart';

import '../config/routeName.dart';
import '../screens/homePage.dart';
import '../screens/splashScreen.dart';

class Approutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(
            name: RoutesName.homepage,
            page: () => Homepage(),
            binding: BindingsBuilder(() {
              Get.put(InitialController());
            })),
        GetPage(name: RoutesName.profile, page: () => ProfilePage()),
      ];
}
