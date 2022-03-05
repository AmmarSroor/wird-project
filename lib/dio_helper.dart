import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://ramadan-comp-rest.herokuapp.com/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String path,
    Map<String, dynamic>? query,
    // String lang = 'en',
     String? token,
    String? username,
  }) async {
    //path=path+username!+'/';
    // dio.options.headers = {
    //   //'Content-Type': 'application/json',
    //   // 'lang': lang,
    //   'Authorization': token != null ? token : '',
    // };
    return await dio.get(
      path,
      // if(query != null){}
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String path,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,
  }) async {
    // dio.options.headers = {
    //   //'Content-Type': 'application/json',
    //   //'lang': lang,
    //   'Authorization': token != null ? token : '',
    // };
    return await dio.post(
      path,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putData({
    required String path,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token != null ? token : '',
    };
    return await dio.put(
      path,
      queryParameters: query,
      data: data,
    );
  }
}

String getToken="https://ramadan-comp-rest.herokuapp.com/token/";
String top_3="https://ramadan-comp-rest.herokuapp.com/competition/list_top_students/?fbclid=IwAR1lnjvaOBysS6L-p7qTiPVz12AvIzPlDzAeWIBBqQtwhqTmk1gUDdtlr64";
String login="https://ramadan-comp-rest.herokuapp.com/student/student-user/(اسم المستخدم)/";
String signUp="https://ramadan-comp-rest.herokuapp.com/student/student-user/";


String token='';