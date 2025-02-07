import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opiny_app/features/ahmed/redeem.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GamesCategoryScreen extends StatelessWidget {
  const GamesCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Game Rewards',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: backgroundMainColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/svgs/db.svg",
                ),
                const Text(
                  " +500",
                  style: TextStyle(
                    color: Color(0xFF4F46E5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset("assets/images/svgs/notification_icon.svg"),
          const SizedBox(width: 10),

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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              children: [
                GameMasterCard(),
                SizedBox(height: 24.h),
                FeaturedGamesSection(),
                SizedBox(height: 24.h,),
                TopPlayersCard(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Header Card
class GameMasterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:  EdgeInsets.all(16.sp),
      padding:  EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: const LinearGradient(
          colors: [Color(0xff9333EA), Color(0xffDB2777)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Game Master",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                   Text(
                    "Win 3 more games to level up",
                    style: TextStyle(color: Colors.white70, fontSize: 16.sp,fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Image.asset("assets/images/pngs/div4.png",width: 64.w,height: 64.h,), ],
          ),

           SizedBox(height: 16.h),
          LinearPercentIndicator(
            lineHeight: 8.0,
            width: 310.w,
            percent: 0.65,
            backgroundColor: Colors.white24,
            progressColor: Colors.white,
            barRadius: Radius.circular(10.r),
          ),
           SizedBox(height: 8.h),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Progress: 65%", style: TextStyle(color: Colors.white70,fontSize: 14.sp)),
              Text("650/1000 XP", style: TextStyle(color: Colors.white70,fontSize: 14.sp)),
            ],
          ),
        ],
      ),
    );
  }
}

// Featured Games List
class FeaturedGamesSection extends StatelessWidget {
  final List<GameItem> games = [
    GameItem("Puzzle Master", "5 min game  •  +200 coins", Icons.extension, Color(0xff9333EA)),
    GameItem("Speed Racer", "10 min race  •  +500 coins", Icons.directions_car,Color(0xffDB2777)),
    GameItem("Chess Challenge", "15 min match  •  +1000 coins", Icons.games, Color(0xff2563EB)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(24.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Games",
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: const Color(0xff9333EA), fontWeight: FontWeight.w400,fontSize: 14.sp),
                ),
              ],
            ),
             SizedBox(height: 28.h),
            Column(
              children: games.map((game) => GameCard(game)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// Individual Game Card
class GameCard extends StatelessWidget {
  final GameItem game;

  GameCard(this.game);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 12.h),
      padding:  EdgeInsets.all(14.sp),
      decoration: BoxDecoration(
        color: game.color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Container(
            padding:  EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: game.color,
            ),
            child: Icon(game.icon, color: Colors.white,size: 20.sp,),
          ),
          SizedBox(width: 8.w,),
          SizedBox(
            width: 140.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(game.title, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp)),
                Text(game.subtitle,style: TextStyle(fontSize: 13.sp,),),
              ],
            ),
          ),
            const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 9.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: game.color,
            ),
            child:  Text(
              "Play",
              style: TextStyle(color: Colors.white,fontSize: 14.sp),
            ),
          ),
      ]
          ),
    );
  }
}

// Game Item Model
class GameItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  GameItem(this.title, this.subtitle, this.icon, this.color);
}



class TopPlayersCard extends StatelessWidget {
  final List<Player> players = [
    Player("Max Power", "Game Master Lvl 8", "assets/images/pngs/profile_image.png", 15750, 1),
    Player("Luna Star", "Game Master Lvl 7", "assets/images/pngs/profile_image.png", 14200, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Players",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.indigo[900]),
              ),
              Text(
                "This Week",
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Players List
          Column(
            children: players.map((player) => PlayerTile(player)).toList(),
          ),
        ],
      ),
    );
  }
}

// Player Tile Widget
class PlayerTile extends StatelessWidget {
  final Player player;

  PlayerTile(this.player);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: player.rank == 1 ? Color(0XFFFEF3C7) : Color(0XFFF1F5F9),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                player.rank.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: player.rank == 1 ? Color(0XFFB45309) : Color(0XFF475569),
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),

          // Profile Picture
          CircleAvatar(
            radius: 24.r,
            backgroundImage: AssetImage(player.image),
          ),
          SizedBox(width: 12.w),

          SizedBox(
            width: 124.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  player.name,
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  player.level,
                  style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
     Spacer(),
          Row(
            children: [
              Text(
                "${player.points}",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Color(0xff9333EA)),
              ),
              SizedBox(width: 4.w),
              SvgPicture.asset(
                "assets/images/svgs/db.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Player Model
class Player {
  final String name;
  final String level;
  final String image;
  final int points;
  final int rank;

  Player(this.name, this.level, this.image, this.points, this.rank);
}