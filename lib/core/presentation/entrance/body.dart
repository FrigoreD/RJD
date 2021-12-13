import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_rjd/core/presentation/Entrance/tracking.dart';
import 'package:project_rjd/core/presentation/constants.dart';

//Сделать константы умножения на размер
//Сделать шрифт для всего
//Допилить страницу входа
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.124),
            height: size.height * 0.5352,
            child: SvgPicture.asset(
              iconWelcome,
              height: size.height * 0.12,
              width: size.width * 0.79,
            )),
        SizedBox(
          height: size.height * 0.24,
        ),
        _BlueBtoom(size: size),
        SizedBox(
          height: size.height * 0.01,
        ),
        _RedBottom(size: size)
      ],
    );
  }
}

class _BlueBtoom extends StatelessWidget {
  const _BlueBtoom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * defaultPaddingButtoms,
        height: size.height * 0.078,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: kPrimaryBuleColor),
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/tracking');
            },
            child: const Text(
              'НАЧАТЬ ДЕНЬ',
              style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 1.25),
            )));
  }
}

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
