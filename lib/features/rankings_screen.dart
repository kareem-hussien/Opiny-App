import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RankingsScreen extends StatelessWidget {
  const RankingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: _buildAppBar(),
      body: Container(
        decoration: _buildBackgroundGradient(),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              _rankingTabs(),
              SizedBox(height: 16.h),
              _topThreeRankings(),
              SizedBox(height: 16.h),
              Expanded(child: _rankingList()),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(
        "Rankings",
        style: _textStyle(20.sp, const Color(0xFF0F172A), FontWeight.w600),
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
              SvgPicture.asset('assets/images/svgs/db.svg'),
              SizedBox(width: 4.w),
              Text("2,450", style: _textStyle(14.sp, Colors.black, FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }

  BoxDecoration _buildBackgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFFEEF2FF), Color(0xFFEEF2FF), Color(0xFFFFFFFF)],
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
          _rankingTab("Weekly"),
          _rankingTab("Monthly", isSelected: true),
          _rankingTab("All Time"),
        ],
      ),
    );
  }

  Widget _rankingTab(String title, {bool isSelected = false}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : const Color(0xFFEEF2FF),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Text(
            title,
            style: _textStyle(14.sp, isSelected ? Colors.black : const Color(0xFF4F46E5), FontWeight.bold),
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
        _topRanker(2, 'assets/images/pngs/profile_image.png'),
        _topRanker(1, 'assets/images/pngs/profile_image.png', isWinner: true, isTop: true),
        _topRanker(3, 'assets/images/pngs/profile_image.png'),
      ],
    );
  }

  Widget _topRanker(int position, String imageUrl, {bool isWinner = false, bool isTop = false}) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(radius: isWinner ? 30.r : 25.r, backgroundImage: AssetImage(imageUrl)),
          if (isWinner) const Icon(Icons.emoji_events, color: Colors.amber, size: 24),
          SizedBox(height: 8.h),
          Container(
            width: 100.w,
            height: isWinner ? 80.h : 60.h,
            decoration: BoxDecoration(
              color: isTop ? const Color(0xFF4F46E5) : const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.circular(8.r),
            ),
            alignment: Alignment.center,
            child: Text(
              "#$position",
              style: _textStyle(14.sp, isTop ? Colors.white : Colors.black, FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rankingList() {
    final rankings = [
      {"rank": 1, "name": "Sarah Chen", "level": "Level 5", "points": "12,450"},
      {"rank": 2, "name": "Alex Morgan", "level": "Level 4", "points": "10,200"},
      {"rank": 3, "name": "Emma Wilson", "level": "Level 4", "points": "9,850"},
    ];

    return ListView.builder(
      itemCount: rankings.length,
      itemBuilder: (context, index) {
        final ranking = rankings[index];
        return _buildRankingTile(
          ranking["rank"] as int,
          ranking["name"] as String,
          ranking["level"] as String,
          ranking["points"] as String,
        );
        },
    );
  }

  Widget _buildRankingTile(int rank, String name, String level, String points) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: Colors.grey[300], child: Text("$rank")),
      title: Text(name, style: _textStyle(14.sp, Colors.black, FontWeight.bold)),
      subtitle: Text(level, style: _textStyle(12.sp, Colors.grey, FontWeight.normal)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
    );
  }

  TextStyle _textStyle(double size, Color color, FontWeight weight) {
    return TextStyle(fontSize: size, color: color, fontWeight: weight);
  }
}
