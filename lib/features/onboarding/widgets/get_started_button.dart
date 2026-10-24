import 'package:doctor/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:doctor/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Handle button press
      },
      style: TextButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemiBold),
    );
  }
}
