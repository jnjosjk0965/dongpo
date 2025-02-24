import 'package:dongpo/core/theme.dart';
import 'package:dongpo/view_model/add_store/add_store_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AddStorePage extends StatefulWidget {
  const AddStorePage({super.key});

  @override
  State<AddStorePage> createState() => _AddStorePageState();
}

class _AddStorePageState extends State<AddStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("가게 등록"),
      ),
      body: Stack(
        children: [
          Consumer(
            builder: (context, ref, child) {
              final addStoreViewModel =
                  ref.watch(addStoreViewModelProvider.notifier);
              return NaverMap(
                onMapReady: (controller) =>
                    addStoreViewModel.setController(controller),
              );
            },
          ),
          const Center(
            child: Icon(
              Icons.location_pin,
              size: 40,
              color: AppColors.primary,
            ),
          ),
          // 현재 위치 버튼
          // Container(
          //   width: double.infinity,
          //   height: 200,
          //   decoration: BoxDecoration(
          //     color: AppColors.bg,
          //   ),
          //   child: Column(),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                height: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "가게 위치를 알려주세요",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const Gap(24),
                    Container(
                      height: 42,
                      decoration: BoxDecoration(
                        color: AppColors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text("주소"),
                      ),
                    ),
                    const Gap(16),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "가게 등록",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
