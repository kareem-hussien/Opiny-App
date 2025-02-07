import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportTicketsScreen extends StatefulWidget {
  const SupportTicketsScreen({super.key});

  @override
  _SupportTicketsScreenState createState() => _SupportTicketsScreenState();
}

class _SupportTicketsScreenState extends State<SupportTicketsScreen> {
  int selectedFilterIndex = 0;
  final List<String> filters = ["All Tickets", "Open", "In Progress", "Resolved"];

  final List<TicketModel> tickets = [
    TicketModel(
      status: "In Progress",
      title: "Payment Issue with Order #4521",
      description: "Unable to process payment for my recent order. The transaction keeps failing...",
      userName: "Sarah Chen",
      ticketId: "#TK-2025",
      timeAgo: "2h ago",
      avatarUrl: "https://randomuser.me/api/portraits/women/45.jpg",
      statusColor: Colors.orange,
    ),
    TicketModel(
      status: "Resolved",
      title: "Account Access Problem",
      description: "I'm having trouble logging into my account. The password reset email...",
      userName: "Alex Morgan",
      ticketId: "#TK-2024",
      timeAgo: "1d ago",
      avatarUrl: "https://randomuser.me/api/portraits/men/40.jpg",
      statusColor: Colors.green,
    ),
    TicketModel(
      status: "Open",
      title: "Feature Request: Dark Mode",
      description: "Would love to see a dark mode option added to the mobile app...",
      userName: "Mike Wilson",
      ticketId: "#TK-2023",
      timeAgo: "3d ago",
      avatarUrl: "https://randomuser.me/api/portraits/men/35.jpg",
      statusColor: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            SizedBox(height: 16.h),
            _buildFilterChips(),
            SizedBox(height: 16.h),
            Expanded(child: _buildTicketList()),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      title: Text(
        'Support Tickets',
        style: TextStyle(
          color: const Color(0xFF0F172A),
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
      ),
      actions: [
        _buildNewTicketButton(),
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        hintText: "Search tickets",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildFilterChips() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(filters.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: ChoiceChip(
              label: Text(filters[index]),
              selected: selectedFilterIndex == index,
              selectedColor: const Color(0xFF4F46E5),
              backgroundColor: Colors.white,
              onSelected: (bool selected) {
                setState(() => selectedFilterIndex = index);
              },
            ),
          );
        }),
      ),
    );
  }

  Widget _buildNewTicketButton() {
    return Container(
      margin: EdgeInsets.only(right: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: const Color(0xFF4F46E5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          const Icon(Icons.add, color: Colors.white),
          SizedBox(width: 8.w),
          Text(
            'New Ticket',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketList() {
    return ListView.builder(
      itemCount: tickets.length,
      itemBuilder: (context, index) => SupportTicketCard(ticket: tickets[index]),
    );
  }
}

class TicketModel {
  final String status, title, description, userName, ticketId, timeAgo, avatarUrl;
  final Color statusColor;

  TicketModel({
    required this.status,
    required this.title,
    required this.description,
    required this.userName,
    required this.ticketId,
    required this.timeAgo,
    required this.avatarUrl,
    required this.statusColor,
  });
}

class SupportTicketCard extends StatelessWidget {
  final TicketModel ticket;

  const SupportTicketCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Chip(label: Text(ticket.status), backgroundColor: ticket.statusColor.withOpacity(0.2)),
                Spacer(),
                Text(ticket.timeAgo, style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
              ],
            ),
            SizedBox(height: 8.h),
            Text(ticket.title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp)),
            SizedBox(height: 4.h),
            Text(ticket.description, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.grey.shade600, fontSize: 14.sp)),
            SizedBox(height: 12.h),
            Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(ticket.avatarUrl), radius: 18.r),
                SizedBox(width: 10.w),
                Text(ticket.userName, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp)),
                Spacer(),
                Text(ticket.ticketId, style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
