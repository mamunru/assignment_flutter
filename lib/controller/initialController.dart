import 'package:get/get.dart';

import '../config/routeName.dart';

class InitialController extends GetxController {
  @override
  void onReady() {
    LoadingHome();
    super.onReady();
  }

  void LoadingHome() async {
    //splash screen show time
    await Future.delayed(const Duration(seconds: 3));
    //redirect HomePage Route after 2 seconds
    print('-------------Homepage Route--------------');
    Get.offAllNamed(RoutesName.homepage);
  }
}
