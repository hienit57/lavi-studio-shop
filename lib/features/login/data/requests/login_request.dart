import 'package:lavi_studio_shop/core/network/http_request/request_model/request_model.dart';

class LoginRequest extends RequestModel {
  LoginRequest(String? query)
      : super(
          route: '/Login',
          requestType: RequestType.http,
          requestMethod: RequestMethod.post,
          params: query,
        );
}
