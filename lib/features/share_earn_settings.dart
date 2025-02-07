import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShareEarn extends StatelessWidget {
  const ShareEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFEEF2FF), Color(0xFFFFFFFF)],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AvailableDataCard(),
                SizedBox(height: 16.h),
                const ShareDataOptions(),
                SizedBox(height: 16.h),
                const TopSharers(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      title: Text(
        "Share & Earn",
        style: TextStyle(
          color: const Color(0xFF1E1B4B),
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
      ),
      actions: [
        _buildDataInfo(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/svgs/notification_icon.svg"),
        )
      ],
    );
  }

  Widget _buildDataInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: const Color(0xFFE0E7FF),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/svgs/wifi_icon.svg'),
          SizedBox(width: 4.w),
          Text(
            "25GB",
            style: TextStyle(
              color: const Color(0xFF1E1B4B),
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          )
        ],
      ),
    );
  }
}

class AvailableDataCard extends StatelessWidget {
  const AvailableDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF4F46E5), Color(0xFF2563EB)],
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 16.h),
          _buildProgressBar(context),
          SizedBox(height: 8.h),
          _buildDataStats(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Available Data", style: _titleStyle),
              SizedBox(height: 8.h),
              Text("Share your unused data to earn rewards", style: _subtitleStyle),
            ],
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white.withOpacity(0.2),
          child: SvgPicture.asset(
            "assets/images/svgs/wifi_icon.svg",
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 8.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        Container(
          height: 8.h,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ],
    );
  }

  Widget _buildDataStats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("25GB Available", style: _subtitleStyle.copyWith(color: Colors.white)),
        Text("40GB Total", style: _subtitleStyle),
      ],
    );
  }

  TextStyle get _titleStyle => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  TextStyle get _subtitleStyle => TextStyle(
    fontSize: 14.sp,
    color: const Color(0xFFC7D2FE),
  );
}

class ShareDataOptions extends StatelessWidget {
  const ShareDataOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildCard(
      "Share Data",
      "History",
      [
        _shareOptionTile("Share 5GB", "Earn 500 points • 24 hours"),
        _shareOptionTile("Share 10GB", "Earn 1000 points • 24 hours"),
      ],
    );
  }

  Widget _buildCard(String title, String actionText, List<Widget> children) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: _boldStyle),
              Text(actionText, style: _actionStyle),
            ],
          ),
          SizedBox(height: 16.h),
          ...children,
        ],
      ),
    );
  }

  Widget _shareOptionTile(String title, String subtitle) {
    return ListTile(
      leading: Image.asset('assets/images/pngs/share.png'),
      title: Text(title, style: _boldStyle),
      subtitle: Text(subtitle, style: _subtitleStyle),
      trailing: ElevatedButton(
        onPressed: () {},
        child: const Text("Share"),
      ),
    );
  }

  TextStyle get _boldStyle => TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold);
  TextStyle get _actionStyle => TextStyle(fontSize: 14.sp, color: const Color(0xFF4F46E5));
  TextStyle get _subtitleStyle => TextStyle(fontSize: 12.sp, color: Colors.black54);
}

class TopSharers extends StatelessWidget {
  const TopSharers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Sharers",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.h),
          _sharerTile("Mike Johnson", "Shared 50GB", "5,000 pts"),
          _sharerTile("Lisa Park", "Shared 45GB", "4,500 pts"),
        ],
      ),
    );
  }

  Widget _sharerTile(String name, String subtitle, String points) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text(name,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle,
          style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
      trailing: Text(
        points,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF4F46E5),
        ),
      ),
    );
  }
}
