import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contact_detail_controller.dart';

class ContactDetailView extends GetView<ContactDetailController> {
  const ContactDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ContactDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
