import 'package:dongpo/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "별별 사람들",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCard(top10Title: "방문 인증 횟수 top 10"),
                      const Gap(24),
                      _buildCard(top10Title: "가게 등록 횟수 top 10"),
                      const Gap(24),
                      _buildCard(top10Title: "가게 리뷰 횟수 top 10"),
                    ],
                  ),
                ),
                const Gap(24),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: const Column(
                    children: [
                      Text("추천해요"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String top10Title,
    String? member,
    String? memberTitle,
    List<dynamic>? top10List,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 260,
        height: 213,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                top10Title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            top10List == null || top10List.isEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "아직 참여한 분이 없어요",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.grey[200],
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 29),
                        child: CircleAvatar(
                          radius: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Text(
                          memberTitle ?? "",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          member ?? "",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
