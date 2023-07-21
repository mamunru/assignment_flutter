import 'package:get/get.dart';

import '../controller/initialController.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(InitialController());
  }
}
