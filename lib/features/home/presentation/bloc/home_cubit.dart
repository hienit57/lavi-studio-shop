import 'package:equatable/equatable.dart';
import 'package:lavi_studio_shop/core/enums/enums.dart';
import 'package:lavi_studio_shop/core/mixins/index.dart';
import 'package:lavi_studio_shop/index.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with LoadingMixin, ToastMixin {
  HomeCubit() : super(const HomeState());
}
