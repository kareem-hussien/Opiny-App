import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RankingsScreen extends StatelessWidget {
  const RankingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Rankings",
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/svgs/db.svg',
                ),
                // const Icon(Icons.monetization_on, color: Colors.orange),
                SizedBox(width: 4.w),
                const Text("2,450",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFEEF2FF),
              Color(0xFFEEF2FF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              _rankingTabs(),
              SizedBox(height: 16.h),
              _topThreeRankings(),
              SizedBox(height: 16.h),
              _rankingList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rankingTabs() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: _rankingTab("Weekly")),
          Expanded(child: _rankingTab("Monthly", isSelected: true)),
          Expanded(child: _rankingTab("All Time")),
        ],
      ),
    );
  }

  Widget _rankingTab(String title, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : const Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : const Color(0xFF4F46E5),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _topThreeRankings() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
            child: _topRanker(2, 'assets/images/pngs/profile_image.png', isTop: false)),
        Expanded(
            child: _topRanker(1, 'assets/images/pngs/profile_image.png',
                isWinner: true, isTop: true)),
        Expanded(
            child:
                _topRanker(3, 'assets/images/pngs/profile_image.png', isTop: false)),
      ],
    );
  }

  Widget _topRanker(
    int position,
    String imageUrl, {
    bool isWinner = false,
    bool isTop = false,
  }) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: isWinner ? 30.r : 25.r,
            backgroundImage: AssetImage(imageUrl),
          ),
          if (isWinner)
            const Icon(Icons.emoji_events, color: Colors.amber, size: 24),
          SizedBox(height: 8.h),
          Container(
            width: 100.w,
            height: isWinner ? 80.h : 60.h,
            decoration: BoxDecoration(
              color: isTop ? const Color(0xFF4F46E5) : const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
            ),
            alignment: Alignment.center,
            child: Text(
              "#$position",
              style: TextStyle(
                  color: isTop ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rankingList() {
    return Column(
      children: [
        _rankingTile(1, "Sarah Chen", "Level 5", "12,450"),
        _rankingTile(2, "Alex Morgan", "Level 4", "10,200"),
        _rankingTile(3, "Emma Wilson", "Level 4", "9,850"),
      ],
    );
  }

  Widget _rankingTile(int rank, String name, String level, String points) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[300],
        child: Text("$rank"),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(level),
      trailing: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey,)
          // Text(points, style: const TextStyle(fontWeight: FontWeight.bold)),
          // const Icon(Icons.monetization_on, color: Colors.orange),
        ],
      ),
    );
  }
}
