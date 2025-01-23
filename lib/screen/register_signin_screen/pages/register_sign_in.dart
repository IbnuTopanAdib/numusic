import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numusic/core/config/assets/app_vectors.dart';

class RegisterSignIn extends StatelessWidget {
  const RegisterSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SvgPicture.asset(AppVectors.logo),
          const SizedBox(height: 20,),
          

        ],
      ),
    );
  }
}