import 'package:lavi_studio_shop/features/login/data/data_sources/login_data_source.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDi() async {
  final getIt = GetIt.I;

  getIt.registerFactory<LoginDataSource>(() => LoginDataSource());

  return;
}
