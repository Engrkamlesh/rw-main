import 'package:flutter/material.dart';

class ImageShade extends StatelessWidget {
  const ImageShade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bound) {
          return const LinearGradient(colors: [
            Color(0xFF031A28),
            Colors.red,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(bound);
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                // image: AssetImage('assets/girl4.png'),
                image: AssetImage('assets/images/workout.png'),
                // 'https://images.unsplash.com/photo-1594381898411-846e7d193883?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium),
          ),
        ));
  }
}
