import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chating_controller.dart';
 


class ChatScreen extends GetView<ChatingController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  _buildCustomAppBar(context),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                // Date Indicator
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    '12 Jan 2024',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 10),
                // Messages
                _buildMessage(true, "Hi... I want to know more about your services and other facilities", "10:16 PM"),
                _buildMessage(false, "Hello Micheal! What kind of services you need?", "10:16 PM"),
                _buildMessage(true, "I am talking about some marketing", "10:16 PM"),
                _buildMessage(false, "Hello Micheal! What kind of services you need?", "10:16 PM"),
                _buildMessage(false, "Hello Micheal! What kind of services you need? Hello Micheal! What kind of services you need?", "10:16 PM"),
              ],
            ),
          ),
          _buildInputField(),
          _buildActionButtons(),  // Method for action buttons
        ],
      ),
    );
  }













PreferredSizeWidget _buildCustomAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () {
            Get.toNamed('/chatting-list');   // Handle back navigation
      },
    ),
    title: Row(
      children: [
        // Profile Picture and Name
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/user_avatar.png'), // Add your image path here
        ),
        const SizedBox(width: 8), // Reduced spacing between avatar and text
        const Expanded(
          child: Text(
            'Micheal David',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis, // Ensure text doesn't overflow
            ),
          ),
        ),
      ],
    ),
    actions: [
      // "Assign to AI" button
      Flexible(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4), // Reduced padding
          child: TextButton(
            onPressed: () {
              // Handle Assign to AI action
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.pink,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Slightly adjusted padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              'Assign to AI',
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis, // Prevent text overflow
            ),
          ),
        ),
      ),
      const SizedBox(width: 4), // Reduced space between buttons

      // "Assign to Team" button with reduced width
      Flexible(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4), // Reduced padding
          child: SizedBox(
            width: 120, // Set a fixed width to reduce the size
            child: TextButton(
              onPressed: () {
                // Handle Assign to Team action
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.grey),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8), // Adjusted padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Assign to Team',
                      style: TextStyle(color: Colors.black),
                      overflow: TextOverflow.ellipsis, // Prevent text overflow
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(width: 8), // Reduced final padding
    ],
  );
}













  Widget _buildMessage(bool isMe, String message, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMe) // Show avatar for the other user on the left
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/user_avatar.png'), // Add your image path here
            ),
          if (!isMe) const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: isMe
                      ? const EdgeInsets.only(left: 40)
                      : const EdgeInsets.only(right: 40),
                  decoration: BoxDecoration(
                    color: isMe ? Colors.pink : Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    message,
                    style: TextStyle(color: isMe ? Colors.white : Colors.black),
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          if (isMe) const SizedBox(width: 10),
          if (isMe) // Show avatar for the current user on the right
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/my_avatar.png'), // Add your image path here
            ),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Write your message...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Handle send message
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.pink,
              padding: const EdgeInsets.all(15),
            ),
            child: const Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Method to build action buttons
  Widget _buildActionButtons() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Add horizontal scrolling
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align items to the start
          children: [
            TextButton(
              onPressed: () {
                // Handle Respond
              },
              child: const Text(
                'Respond',
                style: TextStyle(color: Colors.pink),
              ),
            ),
            const VerticalDivider(),
            TextButton(
              onPressed: () {
                // Handle Comment
              },
              child: const Text(
                'Comment',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const VerticalDivider(),
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                // Handle Message
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {
                // Handle Bookmark
              },
            ),
            IconButton(
              icon: const Icon(Icons.insert_emoticon),
              onPressed: () {
                // Handle Emoji
              },
            ),
            IconButton(
              icon: const Icon(Icons.image),
              onPressed: () {
                // Handle Image
              },
            ),
            IconButton(
              icon: const Icon(Icons.file_copy),
              onPressed: () {
                // Handle File
              },
            ),
          ],
        ),
      ),
    );
  }
}