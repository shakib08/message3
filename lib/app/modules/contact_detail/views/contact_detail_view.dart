import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:massenger_app3/app/utils/custom_container.dart';
import 'package:massenger_app3/app/utils/custom_divider.dart';

import '../controllers/contact_detail_controller.dart';

class ContactDetailView extends GetView<ContactDetailController> {
  const ContactDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact Details',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/07ea/7d5d/538664e354471b710cdb8a515a4e1832?Expires=1728864000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EDf16ODStVhbGtvgH0KuUteTZIN7AZYYqA5g073TPdUnUo7M9ujdV1h-oLaLJzuewcnFgQUadX~~FkGYCkkmkUlB4k7bUEO-e8qEa71~onU85nyuskJnE~Y88gzEeN~1HphqUmt771cBhDY8mY8abuTp2LhP3sbkyX9Q0CWYA8DDjTqbS7yyRqyGZbuhHOdIyJhJD8HPf1Iwc1sV569SxoY~3fWZ9Mm6HvQwsR-pvRnn9U-BWFx-MutlayWmXqhJidsl7nXew2ToKxStpD3hC~MHcJyNpXxio3AIh1rfWE5AomEB~Mm5AjcrUnZhTi6oIc0jTQ2MiAN9avE4cephZA__',
                    width: 126,
                    height: 126,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Text(
              'Micheal David',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'ID: 25361',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network('https://www.citypng.com/public/uploads/preview/round-instagram-logo-photos-social-media-701751694793070wrsl7ybb7v.png',height: 24,width: 24,),
              Text('Instagram', style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              )
            ],),
            SizedBox(
              height: 20,
            ),
            CustomDivider(width: 1, length: Get.width - 32, color: Colors.grey),
            SizedBox(
              height: 10,
            ),
            Text(
              'Phone Number / Account Name / Email',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '+92 323 4471436 / @myaccount / asd@gmail.com',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomDivider(width: 1, length: Get.width - 32, color: Colors.grey),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tag',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Tag 1',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5C5C5C)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomDivider(width: 1, length: Get.width - 32, color: Colors.grey),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(
                        title: '18.6K',
                        subtitle: 'Total Messages',
                        imageLink: 'assets/total_message.png',
                        border: Border(
                          right: BorderSide(color: Colors.grey, width: .5,),
                          bottom: BorderSide(color: Colors.grey, width: .5,),
                        ),
                      ),
                      CustomContainer(
                          title: '21 jan 2024',
                          subtitle: 'First contact date',
                          imageLink: 'assets/phone_call.png', border: Border(
                        left: BorderSide(color: Colors.grey, width: .5,),
                        bottom: BorderSide(color: Colors.grey, width: .5,),
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(
                          title: '25',
                          subtitle: 'AI resposnes',
                          imageLink: 'assets/ai_response.png', border: Border(
                        top: BorderSide(color: Colors.grey, width: .5,),
                        right: BorderSide(color: Colors.grey, width: .5,),
                      ),),
                      CustomContainer(
                          title: '05',
                          subtitle: 'Transfers',
                          imageLink: 'assets/arrow.png', border: Border(
                        left: BorderSide(color: Colors.grey, width: .5,),
                        top: BorderSide(color: Colors.grey, width: .5,),
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
