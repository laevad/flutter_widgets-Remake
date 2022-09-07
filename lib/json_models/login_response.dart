class LoginResponse {
  final String token;
  final String errMsg;

  LoginResponse(this.token, this.errMsg);

  factory LoginResponse.fromJson(Map<String, dynamic> json){
    return LoginResponse( json['access_token'], json['error']);
  }
}