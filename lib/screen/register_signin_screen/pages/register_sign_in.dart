import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numusic/common/widgets/buttons/general_app_button.dart';
import 'package:numusic/core/config/assets/app_images.dart';
import 'package:numusic/core/config/assets/app_vectors.dart';
import 'package:numusic/core/config/theme/app_colors.dart';

class RegisterSignIn extends StatelessWidget {
  const RegisterSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Stack(
                children: [
                  Image.asset(AppImages.registerLoginPic),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                      child: Container(color: Colors.black.withOpacity(0)),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Enjoy Listening Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet amat jamet slepet slebew uhuy',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      // Membatasi ukuran tombol agar fleksibel
                      child: GeneralAppButton(
                        onPressed: () {},
                        title: 'Register',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: GeneralAppButton(
                        onPressed: () {},
                        title: 'Sign in',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
