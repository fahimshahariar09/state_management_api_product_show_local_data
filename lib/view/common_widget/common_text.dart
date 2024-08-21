import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
      required this.titel,
      this.fColor,
      this.fSize,
      this.fWeight,
      this.overflow,
      this.maxLine});


  final String titel;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final TextOverflow? overflow;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style:  TextStyle(
        color: fColor ?? Colors.grey.shade700,
        fontSize: fSize ?? 15,
        fontWeight: fWeight?? FontWeight.bold,
        overflow: overflow ?? TextOverflow.ellipsis,
      ),
      maxLines: maxLine ?? 1,
    );
  }
}
