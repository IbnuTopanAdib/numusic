import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numusic/common/widgets/buttons/general_app_button.dart';
import 'package:numusic/core/config/assets/app_images.dart';
import 'package:numusic/core/config/assets/app_vectors.dart';
import 'package:numusic/core/config/theme/app_colors.dart';
import 'package:numusic/screen/choose_mode_screen/bloc/theme_cubit.dart';
import 'package:numusic/screen/register_signin_screen/pages/register_sign_in.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.chooseModeBackground),
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(AppVectors.logo),
            ),
            const Spacer(),
            const Text(
              'Choose Mode',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildModeOption(
                  context,
                  icon: Icons.light_mode,
                  label: 'Light mode',
                  onTap: () {
                    context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                  },
                ),
                const SizedBox(width: 20),
                _buildModeOption(
                  context,
                  icon: Icons.dark_mode,
                  label: 'Dark mode',
                  onTap: () {
                    context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                  },
                ),
              ],
            ),
            const SizedBox(height: 40),
            GeneralAppButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterSignIn()));
              },
              title: 'Continue',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModeOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final isSelected = context.watch<ThemeCubit>().state ==
        (label == 'Light mode' ? ThemeMode.light : ThemeMode.dark);
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isSelected ? 90 : 80,
            height: isSelected ? 90 : 80,
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primary.withOpacity(0.7)
                  : const Color(0xff30393C).withOpacity(0.5),
              shape: BoxShape.circle,
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ]
                  : [],
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
