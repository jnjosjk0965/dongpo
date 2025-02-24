import 'package:dongpo/core/theme.dart';
import 'package:dongpo/view_model/home/map_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapViewModel = ref.read(mapViewModelProvider.notifier);

    return Scaffold(
      body: Stack(
        children: [
          NaverMap(
            onMapReady: (controller) {
              mapViewModel.setController(controller);
            },
            onMapTapped: (point, latLng) {
              mapViewModel.updateSelectedLocation(latLng);
            },
          ),
          Positioned(
            top: 50.0,
            left: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: () {
                context.push("/home/search");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    const BoxShadow(
                      offset: Offset(0, 8),
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      "검색창",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey[300],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.search,
                      color: AppColors.grey[300],
                      size: 24,
                    )
                  ],
                ),
              ),
            ),
          ),

          // 네비게이션바 위에 모달
          // Positioned(
          //   top: 100,
          //   child: TextButton(
          //       onPressed: () {
          //         Navigator.of(context, rootNavigator: true).push(
          //           ModalBottomSheetRoute(
          //               useSafeArea: false,
          //               builder: (context) {
          //                 return Container(
          //                   decoration: BoxDecoration(
          //                     color: AppColors.bg,
          //                   ),
          //                   width: double.infinity,
          //                   height: 200,
          //                   child: const Padding(
          //                     padding: EdgeInsets.only(bottom: 20),
          //                     child: Column(
          //                       mainAxisSize: MainAxisSize.min,
          //                       children: [
          //                         Text('Modal Opened'),
          //                         Divider(thickness: 1),
          //                       ],
          //                     ),
          //                   ),
          //                 );
          //               },
          //               isScrollControlled: false),
          //         );
          //       },
          //       child: Text("바텀 시트")),
          // ),
        ],
      ),
    );
  }
}
