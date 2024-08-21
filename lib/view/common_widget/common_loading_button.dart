import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({
    super.key,
    this.loadingHeight,
    this.loadingWidth,
    this.loadingColor,
  });

  final double? loadingHeight;
  final double? loadingWidth;
  final Color? loadingColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      child: SizedBox(
        height: loadingHeight ?? 45,
        width: loadingWidth ?? MediaQuery.sizeOf(context).width,
        child: Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.orange,
          color: loadingColor ?? Colors.black,
        )),
      ),
    );
  }
}
