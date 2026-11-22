import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          isValid: hasLowercase,
          validationText: "At least one lowercase letter",
        ),
        verticalSpace(2),
        buildValidationRow(
          isValid: hasUppercase,
          validationText: "At least one uppercase letter",
        ),
        verticalSpace(2),
        buildValidationRow(
          isValid: hasSpecialCharacter,
          validationText: "At least one special character",
        ),
        verticalSpace(2),
        buildValidationRow(
          isValid: hasNumber,
          validationText: "At least one number",
        ),
        verticalSpace(2),
        buildValidationRow(
          isValid: hasMinLength,
          validationText: "At least 8 characters",
        ),
      ],
    );
  }

  Widget buildValidationRow({
    required bool isValid,
    required String validationText,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: isValid ? Colors.green : Colors.red,
          child: Icon(
            isValid ? Icons.check : Icons.close,
            size: 8,
            color: Colors.white,
          ),
        ),
        horizontalSpace(8),
        Text(
          validationText,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: isValid
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: isValid ? Colors.green : Colors.red,
            decorationThickness: 2,
            color: isValid ? ColorManager.gray : ColorManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
