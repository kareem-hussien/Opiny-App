import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Drawer Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Menu',
                    style: TextStyle(
                      color: Color(0xFF1F2937),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFF9CA3AF),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              // User Info
              Row(
                children: [
                  Image.asset(
                    'assets/images/pngs/bg_image.png',
                    width: 55.0,
                    height: 55.0,
                  ),
                  const SizedBox(width: 12.0),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omar Abdelaziz',
                          style: TextStyle(
                            color: Color(0xFF1F2937),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          '3omarabdelaziz123@gmail.com',
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14.0),
              // XP and Balance Info
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xFFEFF6FF),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/svgs/fire_icon.svg'),
                              const SizedBox(width: 8.0),
                              const Text(
                                '2,450 XP',
                                style: TextStyle(
                                  color: Color(0xFF374151),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Current XP',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xFFEFF6FF),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/svgs/db.svg'),
                              const SizedBox(width: 8.0),
                              const Text(
                                '\$245.50',
                                style: TextStyle(
                                  color: Color(0xFF374151),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          const Text(
                            'Balance',
                            style: TextStyle(
                              color: Color(0xFF6B7280),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Divider(),
              const SizedBox(height: 20.0),
              // Menu Items
              Expanded(
                child: ListView(
                  children: [
                    const DrawerItem(
                      icon: Icons.home,
                      title: 'Home',
                      isSelected: true,
                    ),
                    const DrawerItem(
                      icon: Icons.task,
                      title: 'Tasks',
                    ),
                    const DrawerItem(
                      icon: Icons.monetization_on,
                      title: 'Earnings',
                    ),
                    const DrawerItem(
                      icon: Icons.emoji_events,
                      title: 'Ranking',
                    ),
                    const DrawerItem(
                      icon: Icons.bar_chart,
                      title: 'Statistics',
                    ),
                    DrawerItem(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Settings and Help
              const DrawerItem(
                icon: Icons.settings,
                title: 'Settings',
              ),
              const DrawerItem(
                icon: Icons.help_outline,
                title: 'Help Center',
              ),
              const Spacer(),
              // Sign Out Button
              ElevatedButton.icon(
                onPressed: () {
                  // Define sign-out functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF1F2),
                  foregroundColor: const Color(0xFFDC2626),
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                icon: const Icon(Icons.logout),
                label: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final bool isSelected;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: isSelected ? const Color(0xFF2563EB) : const Color(0xFF6B7280),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected ? const Color(0xFF3B82F6) : const Color(0xFF1F2937),
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
