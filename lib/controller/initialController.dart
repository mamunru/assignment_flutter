import 'package:assignment/models/friendsmodel.dart';
import 'package:assignment/services/apiservices.dart';
import 'package:get/get.dart';

import '../config/routeName.dart';

class InitialController extends GetxController {
  var _friendList = <friendsmodel>[].obs;
  RxList<friendsmodel> get friendList => _friendList;

  @override
  void onReady() {
    LoadingHome();
    super.onReady();
  }

  void LoadingHome() async {
    var getdata = await ApiServices()
        .apigetListData(url: 'https://randomuser.me/api/?results=12');

    //print(getdata.data['results']);
    List<friendsmodel> finallist = (getdata.data['results'] as List)
        .map((e) => friendsmodel.fromJson(e))
        .toList();

    _friendList.value = finallist;
    await Future.delayed(const Duration(seconds: 1));
    print('-------------Homepage Route--------------');
    Get.offAllNamed(RoutesName.homepage);
  }
}
