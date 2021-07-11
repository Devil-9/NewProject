import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

  login(email, password) async {
    // try {
      return await dio.post('https://seed2root.herokuapp.com/authenticate',
          data: {"email": email, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    // } on DioError catch (e) {
    //   Fluttertoast.showToast(
    //       msg: e.response!.data['msg'],
    //       toastLength: Toast.LENGTH_SHORT,
    //       gravity: ToastGravity.BOTTOM,
    //       backgroundColor: Colors.red,
    //       textColor: Colors.white,
    //       fontSize: 16.0);
    // }
  }

  addUser(email, password, firstname, lastname, phone) async {
    return await dio.post('https://seed2root.herokuapp.com/addUser',
        data: {"email": email, "password": password, "firstname": firstname, "lastname": lastname, "phone": phone},
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }
}
