import 'package:flutter/material.dart';
import 'package:new_cvsender/ui/theme.dart';

class BottomSheetButton extends StatelessWidget {
  final Function? onTap;
  final Color bColor;
  final String text;
  final bool? isColor;

  const BottomSheetButton(
      {Key? key,
      this.onTap,
      required this.bColor,
      required this.text,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
        ),
        height: 55,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bColor,
            border: Border.all(
                width: 2,
                color: isColor == null ? bColor : Colors.grey.shade300)),
        child: Center(
          child: Text(
            text,
            style: titleStyle.copyWith(
                color: isColor == null ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}