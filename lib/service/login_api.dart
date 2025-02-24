import 'package:dio/dio.dart';
import 'package:dongpo/model/login/login_request_model.dart';
import 'package:dongpo/model/login/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api.g.dart';

@RestApi(baseUrl: "/auth")
abstract class LoginApi {
  factory LoginApi(Dio dio, {String baseUrl}) = _LoginApi;

  @POST("/kakao")
  Future<HttpResponse<LoginResponseModel>> kakaoLogin(
    @Body() KakaoLoginRequest body,
  );

  @POST("/apple")
  Future<HttpResponse<LoginResponseModel>> appleLogin(
    @Body() AppleLoginRequest body,
  );

  @POST("/apple/continue")
  Future<HttpResponse<LoginResponseModel>> appleSignUp(
    @Body() AppleSignUpRequest body,
  );

  @POST("/reissue")
  Future<HttpResponse<LoginResponseModel>> reissue(
    @Body() RefreshRequest body,
  );
}
