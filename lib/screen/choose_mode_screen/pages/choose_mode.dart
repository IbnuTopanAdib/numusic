import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numusic/common/widgets/buttons/general_app_button.dart';
import 'package:numusic/core/config/assets/app_images.dart';
import 'package:numusic/core/config/assets/app_vectors.dart';
import 'package:numusic/core/config/theme/app_colors.dart';
import 'package:numusic/screen/choose_mode_screen/bloc/theme_cubit.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.chooseModeBackground))),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo)),
            const Spacer(),
            const Text(
              'Choose Mode',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                      },
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xff30393C)
                                  .withOpacity(0.5), // Add transparency
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.light_mode,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Light mode',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                      },
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: const Color(0xff30393C).withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.dark_mode,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Dark mode',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GeneralAppButton(onPressed: () {}, title: 'Continue')
          ],
        ),
      ),
    );
  }
}
