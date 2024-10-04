import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import flutter_screenutil
import 'package:get/get.dart';

class ChattingListView extends StatefulWidget {
  const ChattingListView({super.key});

  @override
  _ChattingListViewState createState() => _ChattingListViewState();
}

class _ChattingListViewState extends State<ChattingListView> {
  bool _isMultiSelect = false; // Toggle state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Default AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8.w), // Responsive padding
         child: CircleAvatar(
  backgroundImage: AssetImage('assets/david.png'), // Use AssetImage instead of Image.asset
  radius: 20.r, // Responsive avatar size using flutter_screenutil
),

        ),
        title: Row(
          children: [
            Text(
              'All Channels',
              style: TextStyle(color: Colors.black, fontSize: 18.sp), // Responsive text size
            ),
            Icon(Icons.arrow_drop_down_outlined, color: Colors.black, size: 24.sp),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isMultiSelect = true; // Toggle state to show the extra row
              });
            },
            icon: Icon(Icons.select_all, color: Colors.black, size: 24.sp), // Responsive icon size
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Conditional Row to show when multi-select is enabled
          if (_isMultiSelect) _buildMultiSelectRow(),

          // Chatting List
          Expanded(
            child: ListView(
              children: [
                _buildChatItem(
                  context,
                  'assets/david.png',
                  'Robert Olivdigo',
                  'Yes sure! I can do',
                  '10:27 PM',
                  Colors.purpleAccent,
                  Icons.done_all,
                ),
                
                _buildChatItem(
                  context,
                  'assets/david.png',
                  'Micheal David',
                  'How can I help you br...',
                  '5:20 PM',
                  Colors.green,
                  Icons.message,
                ),
                // Add more items
              ],
            ),
          ),
        ],
      ),
      // Custom Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Adjust this as needed
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble, size: 24.sp), // Responsive icon size
            label: 'All(96)',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 24.sp),
            label: 'All(21)',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 24.sp),
            label: 'Mine(52)',
          ),
        ],
      ),
    );
  }

  // Additional Row below AppBar when multi-select is active
  Widget _buildMultiSelectRow() {
    return Container(
      padding: EdgeInsets.all(6.w), // Responsive padding
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.radio_button_checked, color: Colors.pink, size: 24.sp),
              SizedBox(width: 8.w), // Responsive spacing
              Text('(0)', style: TextStyle(color: Colors.black, fontSize: 10.sp)), // Responsive text
            ],
          ),
             IconButton(
                onPressed: () {
                  setState(() {
                    _isMultiSelect = false; // Close the multi-select row
                  });
                },
                icon: Icon(Icons.message, color: Colors.pink, size: 10.sp), // Responsive icon
              ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w), // Responsive padding
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Assign to AI" action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800], // Dark button background
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r), // Responsive border radius
                    ),
                  ),
                  child: Text('Assign to AI', style: TextStyle(fontSize: 8.sp,color:Colors.white)), // Responsive text
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w), // Responsive padding
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Assign to Team" action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800], // Dark button background
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r), // Responsive border radius
                    ),
                  ),
                  child: Row(
                    children: [
                      Text('Assign to Team', style: TextStyle(fontSize: 8.sp,color:Colors.white)), // Responsive text
                      Icon(Icons.arrow_drop_down, size: 20.sp,color: Colors.white,), // Responsive icon
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isMultiSelect = false; // Close the multi-select row
                  });
                },
                icon: Icon(Icons.close, color: Colors.pink, size: 10.sp), // Responsive icon
              ),
            ],
          ),
        ],
      ),
    );
  }

Widget _buildChatItem(
  BuildContext context,
  String avatarPath,
  String name,
  String lastMessage,
  String time,
  Color statusColor,
  IconData statusIcon,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w), // Responsive padding
    child: Row(
      children: [
        // Avatar
        CircleAvatar(
          backgroundImage: AssetImage(avatarPath),
          radius: 25.r, // Responsive avatar size
        ),
        SizedBox(width: 12.w), // Responsive space between avatar and content

        // Name, last message, and badges
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row with Name and Status Badges
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp, // Responsive text
                    ),
                  ),
                  SizedBox(width: 5.w), // Space between name and badge
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h), // Badge padding
                    decoration: BoxDecoration(
                      color: Colors.orange[100], // Badge background color
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.circle, color: Colors.orange, size: 10.sp), // Badge icon
                        SizedBox(width: 2.w),
                        Text(
                          'Issac', // Dynamic badge content
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Last message text
              Text(
                lastMessage,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600], // Grey color for last message
                ),
                maxLines: 1, // Limit message to 1 line
                overflow: TextOverflow.ellipsis, // Add ellipsis if text is too long
              ),
            ],
          ),
        ),

        SizedBox(width: 8.w), // Space between text and time/status icons

        // Time and Status Icons
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Status badge
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: Colors.green[100], // Background color for the status badge
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(
                '16h', // Dynamic status duration
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 4.h), // Space between status and time
            Text(
              time,
              style: TextStyle(color: Colors.grey, fontSize: 12.sp), // Time text
            ),
          ],
        ),
        SizedBox(width: 12.w), // Space between time and action icon

        // Action Icon (e.g., WhatsApp)
        Icon(statusIcon, color: statusColor, size: 24.sp), // Responsive action icon
      ],
    ),
  );
}

}
