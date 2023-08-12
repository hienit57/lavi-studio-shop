import 'package:lavi_studio_shop/core/network/http_request/request_model/request_model.dart';

class RefreshTokenRequest extends RequestModel {
  RefreshTokenRequest(String? query)
      : super(
          route: '/RefreshToken',
          requestType: RequestType.http,
          requestMethod: RequestMethod.post,
          params: query,
        );
}
