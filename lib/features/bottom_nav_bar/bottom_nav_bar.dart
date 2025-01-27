import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/features/bottom_nav_bar/home/screens/home_screen.dart';
import 'package:opiny_app/features/bottom_nav_bar/home/screens/tasks_screen.dart';
import 'package:opiny_app/features/bottom_nav_bar/profile/screens/profil_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  static const routeName = '/bottom_nav_bar';

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0; // Define the selected index

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _onItemTapped(int index) {
    if (index == 4) {
      _scaffoldKey.currentState?.openEndDrawer(); // Use the key to open the end drawer
    } else {
      setState(() {
        _selectedIndex = index;
      });
  }
  }

  List<Widget> tabs = [
    HomeScreen(),
    const TasksScreen(),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the GlobalKey
      backgroundColor: const Color(0xFFeff3ff),
      body: tabs[_selectedIndex],
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(16.0),
              color: const Color(0xFF7C3AED),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'More',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the drawer
                    },
                  ),
                ],
              ),
            ),
            // Menu Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(Icons.videogame_asset, 'Games'),
                  _buildDrawerItem(Icons.quiz, 'Quiz'),
                  _buildDrawerItem(Icons.bar_chart, 'Surveys'),
                  _buildDrawerItem(Icons.card_giftcard, 'Offers'),
                  _buildDrawerItem(Icons.chat, 'Chat'),
                  _buildDrawerItem(Icons.headset_mic, 'Support'),
                  _buildDrawerItem(Icons.poll, 'Opinion Polls'),
                  _buildDrawerItem(Icons.person, 'Profile'),
                  _buildDrawerItem(Icons.settings, 'Settings'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              shadowColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color(0xFF7C3AED),
              unselectedItemColor: Colors.grey,
              elevation: 0,
              selectedFontSize: 12.sp,
              selectedLabelStyle: TextStyle(
                fontSize: 12.sp,
                height: 2.h, // Same spacing for unselected items
                fontWeight: FontWeight.w500,
                color: const Color(0xFF7C3AED),
              ),
              unselectedFontSize: 12.sp,
              unselectedLabelStyle: TextStyle(
                height: 2.h, // Same spacing for unselected items
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF94A3B8),
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: const Icon(Iconsax.home),
                  ),
                  label: 'Hot Offers',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: const Icon(Iconsax.task),
                  ),
                  label: 'Earning',
                ),
                const BottomNavigationBarItem(
                  icon: SizedBox.shrink(),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: const Icon(Iconsax.emoji_normal),
                  ),
                  label: 'Leaderboard',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: const Icon(Icons.menu),
                  ),
                  label: 'More',
                ),
              ],
            ),
          ),
          Positioned(
            top: -20.h,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Column(
                children: [
                  Container(
                    height: 56.h,
                    width: 56.w,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF7C3AED),
                          Color(0xFF4F46E5),
                        ],
                      ),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 4.w),
                          left: BorderSide(color: Colors.white, width: 4.w),
                          right: BorderSide(color: Colors.white, width: 4.w),
                          bottom: BorderSide(color: Colors.white, width: 4.w)),
                    ),
                    child: Image.asset(
                      'assets/images/pngs/menu_icon.png',
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF7C3AED),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
      onTap: () {
        // Handle navigation or action for each item
      },
    );
  }
}

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});
//
//   static const routeName = '/bottom_nav_bar';
//
//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0; // Define the selected index
//
//   // Handle item tap
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   List<Widget> tabs = [
//     HomeScreen(),
//     const TasksScreen(),
//     Container(
//       color: Colors.grey,
//     ),
//     Container(
//       color: Colors.blue,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFeff3ff),
//       body: tabs[_selectedIndex],
//       bottomNavigationBar: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Theme(
//             data: Theme.of(context).copyWith(
//               canvasColor: Colors.white,
//               shadowColor: Colors.transparent,
//               splashColor: Colors.transparent,
//             ),
//             child: BottomNavigationBar(
//               currentIndex: _selectedIndex,
//               onTap: _onItemTapped,
//               type: BottomNavigationBarType.fixed,
//               selectedItemColor: const Color(0xFF7C3AED),
//               unselectedItemColor: Colors.grey,
//               elevation: 0,
//               selectedFontSize: 12.sp,
//               selectedLabelStyle: TextStyle(
//                 fontSize: 12.sp,
//                 height: 2.h, // Same spacing for unselected items
//                 fontWeight: FontWeight.w500,
//                 color: const Color(0xFF7C3AED),
//               ),
//               unselectedFontSize: 12.sp,
//               unselectedLabelStyle: TextStyle(
//                 height: 2.h, // Same spacing for unselected items
//                 fontSize: 12.sp,
//                 fontWeight: FontWeight.w400,
//                 color: const Color(0xFF94A3B8),
//               ),
//               items: [
//                 BottomNavigationBarItem(
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 8.h),
//                     child: const Icon(Iconsax.home),
//                   ),
//                   label: 'Hot Offers',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 8.h),
//                     child: const Icon(Iconsax.task),
//                   ),
//                   label: 'Earning',
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: SizedBox.shrink(),
//                   label: '',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 8.h),
//                     child: const Icon(Iconsax.emoji_normal),
//                   ),
//                   label: 'Leaderboard',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Padding(
//                     padding: EdgeInsets.only(top: 8.h),
//                     child: const Icon(Icons.menu),
//                   ),
//                   label: 'More',
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             top: -20.h,
//             left: MediaQuery.of(context).size.width / 2 - 30,
//             child: GestureDetector(
//               onTap: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     height: 56.h,
//                     width: 56.w,
//                     decoration: BoxDecoration(
//                       gradient: const LinearGradient(
//                         colors: [
//                           Color(0xFF7C3AED),
//                           Color(0xFF4F46E5),
//                         ],
//                       ),
//                       shape: BoxShape.circle,
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 8,
//                           offset: Offset(0, 4),
//                         ),
//                       ],
//                       border: Border(
//                           top: BorderSide(color: Colors.white, width: 4.w),
//                           left: BorderSide(color: Colors.white, width: 4.w),
//                           right: BorderSide(color: Colors.white, width: 4.w),
//                           bottom: BorderSide(color: Colors.white, width: 4.w)),
//                     ),
//                     child: Image.asset(
//                       'assets/images/pngs/menu_icon.png',
//                     ),
//                   ),
//                   SizedBox(height: 5.h),
//                   Text(
//                     'Tasks',
//                     style: TextStyle(
//                       fontSize: 12.sp,
//                       fontWeight: FontWeight.w400,
//                       color: const Color(0xFF7C3AED),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
