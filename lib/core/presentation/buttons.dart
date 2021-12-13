import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class _RedBottom extends StatelessWidget {
  const _RedBottom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * defaultPaddingButtoms,
        height: size.height * 0.078,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), border: Border.all(color: kPrimaryRedColor)),
        child: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Обернуть в класс
                SvgPicture.asset(iconPhone),
                SizedBox(
                  width: size.width * 0.021,
                ),
                const Text(
                  'СВЯЗАТЬСЯ С МЕНЕДЖЕРОМ',
                  style: TextStyle(fontSize: 15, color: kPrimaryRedColor, letterSpacing: 1.25),
                ),
              ],
            )));
  }
}
