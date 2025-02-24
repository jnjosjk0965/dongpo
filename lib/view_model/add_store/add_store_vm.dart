import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_store_vm.g.dart';
part 'add_store_vm.freezed.dart';

@freezed
class AddStoreState with _$AddStoreState {
  const factory AddStoreState({
    NaverMapController? controller,
    NLatLng? position,
    String? address,
  }) = _AddStoreState;
}

@Riverpod()
class AddStoreViewModel extends _$AddStoreViewModel {
  @override
  AddStoreState build() {
    return const AddStoreState();
  }

  void setController(NaverMapController controller) {
    state = state.copyWith(controller: controller);
  }
}
