import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numusic/common/widgets/buttons/general_app_button.dart';
import 'package:numusic/core/config/assets/app_images.dart';
import 'package:numusic/core/config/assets/app_vectors.dart';
import 'package:numusic/core/config/theme/app_colors.dart';
import 'package:numusic/screen/choose_mode_screen/pages/choose_mode.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.onboardingBackground))),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo)),
            const Spacer(),
            const Text(
              'Listen to Asian Music',
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
            const SizedBox(
              height: 20,
            ),
            GeneralAppButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseMode(),
                    ),
                  );
                },
                title: 'Get Started')
          ],
        ),
      ),
    );
  }
}
