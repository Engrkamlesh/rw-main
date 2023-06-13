import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    super.key,
     required this.leadingicon,
      required this.title, this.gridView,
      
      this.column
    });

  final IconData leadingicon;
 
  final Widget title;
  final Widget? column;
  final GridView? gridView;
  
  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      shrinkWrap: true,
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
            
              backgroundColor: Color(0xFF031A28),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              expandedHeight: 140,
              leading: Icon(
              leadingicon,
              color: Colors.red,
              size: 25,
              ).onTap(() {
                Get.back();
              }),
              flexibleSpace: FlexibleSpaceBar(
                title:  title,
                centerTitle: true,
              ).onTap(() {
                Get.back();
              }),
              actions: [
                const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ).pOnly(right: 5),
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/images/workout.png'),
                ).pOnly(right: 15, left: 5).onTap(() {
               
                }),
              ],
            ),
            SliverToBoxAdapter(
              child: column
            ),
            
            // GridView(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            //   )
              
          
            // CustomTabbar()
          ],
        );
  }
}