import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Badges extends StatelessWidget {
  const Badges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: SvgPicture.asset(
          'assets/images/svgs/gaame_icon_colored.svg',
          fit: BoxFit.scaleDown,
        ),
        title: const Text(
          "GameRewards",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF4C1D95),
          ),
        ),
        actions: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/svgs/goald_icon.svg',
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(width: 8),
              const Text(
                "2,450",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4C1D95),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 10, bottom: 10),
                child: Image.asset('assets/images/pngs/bg_image.png'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Achievement Badges',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E1065),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Collect badges and showcase your gaming prowess',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF475569),
                  ),
                ),
                const SizedBox(height: 24),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: .8,
                  children: const [
                    AchievementCard(
                      title: "Pro Gamer",
                      subtitle: "Win 100 matches",
                      progress: 0.75,
                      completed: false,
                      icon: 'assets/images/svgs/cup_icon.svg',
                      color: Colors.purple,
                    ),
                    AchievementCard(
                      title: "First Victory",
                      subtitle: "Win your first match",
                      progress: 1.0,
                      completed: true,
                      icon: 'assets/images/svgs/cup_icon2.svg',
                      color: Colors.orange,
                    ),
                    AchievementCard(
                      title: "Champion",
                      subtitle: "Reach level 50",
                      progress: 0.25,
                      completed: false,
                      icon: 'assets/images/svgs/tag_icon.svg',
                      color: Colors.red,
                    ),
                    AchievementCard(
                      title: "Mystery Badge",
                      subtitle: "???",
                      progress: 0.0,
                      completed: false,
                      icon: 'assets/images/svgs/loack_icon.svg',
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F3FF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Achievements',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2E1065),
                            ),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7C3AED),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/svgs/case1.svg'),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'First Win Streak',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF2E1065),
                                    ),
                                  ),
                                  Text(
                                    'Won 3 matches in a row',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF64748B),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Text('2h ago',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF64748B),
                              ))
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/svgs/case2.svg'),
                              const SizedBox(width: 8),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Level Up!',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF2E1065),
                                    ),
                                  ),
                                  Text(
                                    'Reached level 10',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF64748B),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Text('1d ago',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF64748B),
                              ))
                        ],
                      ),
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
}

class AchievementCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final bool completed;
  final String icon;
  final Color color;

  const AchievementCard({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.completed,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              icon,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2E1065)),
            ),
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF64748B),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 13),
            completed
                ? Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0XFFECFDF5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Text(
                      "Completed",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: progress,
                          color: color,
                          backgroundColor: Colors.grey[200],
                        ),
                      ),
                      Text(
                        "$progress%",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF64748B),
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
