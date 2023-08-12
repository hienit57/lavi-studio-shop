import 'package:lavi_studio_shop/index.dart';

mixin LoadingMixin {
  showLoading() {
    EasyLoading.show(status: 'loading...');
  }

  dismissloading() {
    EasyLoading.dismiss();
  }
}
