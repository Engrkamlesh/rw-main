import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ImageCard(),
          ImageCard(),
          ImageCard(),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 1.2,
        height: MediaQuery.of(context).size.height * 1 / 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage('assets/images/workout.png'),
                fit: BoxFit.cover)),
      ).px(10),
    );
  }
}
