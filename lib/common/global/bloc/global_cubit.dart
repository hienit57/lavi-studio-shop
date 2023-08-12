import 'package:lavi_studio_shop/core/mixins/index.dart';
import 'package:equatable/equatable.dart';
import 'package:lavi_studio_shop/index.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> with LoadingMixin {
  GlobalCubit() : super(const GlobalState());

  void isOpenAllTab({required bool value}) {
    emit(state.copyWith(isOpenAllTab: value));
  }

  void isCheckColor({required bool value}) {
    emit(state.copyWith(isCheckColor: value));
  }

  void checkSidebarZoomOut(bool index) {
    emit(state.copyWith(isSidebarZoomOut: !index));
  }
}
