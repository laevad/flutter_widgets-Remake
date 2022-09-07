import 'package:Flutter_Widgets/constant/config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../json_models/login_response.dart';

Future<LoginResponse> loginAuth(String email, String password) async {
  Map<String, dynamic> body = {"email": email, 'password': password};
  var res = await http.post(Uri.parse("${Config.appUrl}/auth/login"), body: body);
  if(res.statusCode == 200 || res.statusCode == 401){
    return LoginResponse.fromJson(jsonDecode(res.body));
  }else{
    throw Exception('Error Occurred');
  }
}

