import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_vm.freezed.dart';
part 'map_vm.g.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    NaverMapController? controller,
    @Default([]) List<NMarker> markers,
    NLatLng? selectedLocation,
  }) = _MapState;
}

@riverpod
class MapViewModel extends _$MapViewModel {
  @override
  MapState build() {
    return const MapState();
  }

  void setController(NaverMapController controller) {
    state = state.copyWith(controller: controller);
  }

  void addMarker(NLatLng position) {
    final marker = NMarker(id: position.toString(), position: position);
    state = state.copyWith(markers: [...state.markers, marker]);
  }

  void updateSelectedLocation(NLatLng? position) {
    state = state.copyWith(selectedLocation: position);
  }
}
