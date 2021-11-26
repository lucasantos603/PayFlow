import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widget/label_button/label_button.dart';
// import 'package:payflow/shared/widget/social_login/label_button/label_button.dart';

class setLabelButton extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const setLabelButton({ Key? key, required this.primaryLabel, required this.primaryOnPressed, required this.secundaryLabel, required this.secundaryOnPressed,  this.enablePrimaryColor=false, this.enableSecondaryColor=false }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
        height: 57,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke
            ),

            Container(
               height: 56,
              child: Row(
                children: [
                  Expanded(child: LabelButton(label: primaryLabel, onPressed: primaryOnPressed, styles: enablePrimaryColor ? TextStyles.buttonPrimary: null)),
                  DividerVerticalWidget(),
                  Expanded(child: LabelButton(label: secundaryLabel, onPressed: secundaryOnPressed, styles: enableSecondaryColor ? TextStyles.buttonPrimary: null)),
                ],
              ),
            ),
          ],
        ),
      );
  }
}