import 'package:flutter/material.dart';
import 'package:state_management_api_product_show/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.buttonName, this.buttonColor, this.textColor, this.buttonHeight, this.buttonWidth, required this.onTab});

  final String buttonName;
  final Color? buttonColor;
  final Color? textColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback onTab;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Card(
        color: Colors.orange,
        child: SizedBox(
          height: 45,
          width: MediaQuery.sizeOf(context).width,
          child: CommonText(
            titel: buttonName,
            fColor: Colors.red,
            fSize: 15,
          ),
        ),
      ),
    );
  }
}
