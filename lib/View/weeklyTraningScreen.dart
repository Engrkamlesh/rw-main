import 'package:flutter/material.dart';
import 'package:rw/api%20services/Color.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/customAppbar.dart';

// ignore: must_be_immutable
class WeeklyTraningScreen extends StatelessWidget {
  WeeklyTraningScreen({super.key});

  List images = [
    'https://images.pexels.com/photos/2827392/pexels-photo-2827392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/3490348/pexels-photo-3490348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/4753928/pexels-photo-4753928.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1978505/pexels-photo-1978505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.screenbackgroundColor,
      body: CustomAppBar(
        leadingicon: Icons.arrow_back,
        title: "Guardians of the Gains".text.size(18).make(),
        column: GridView.builder(
          shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          crossAxisSpacing: 10,
           mainAxisSpacing: 10),
         itemBuilder: (context, int index){
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(images[index]), fit: BoxFit.cover)
              ),
          );
         }),
      
      ),
    );
  }
}