import 'package:dio/dio.dart';

class ApiServices {
  Future<Response> apigetListData({required String url}) async {
    Response response;

    String finalurl = url;
    print(finalurl);
    try {
      response = await Dio().get(finalurl);
      print(response.statusCode);
      return response;
    } on DioError catch (e) {
      print(e);
      throw "Error Coming From $finalurl";
    }
  }
}
