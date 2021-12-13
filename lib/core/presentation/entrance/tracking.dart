import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_rjd/core/presentation/constants.dart';
import 'package:project_rjd/core/presentation/entrance/login.dart';

class Tracking extends StatelessWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Container(
        alignment: Alignment.bottomCenter,
        height: size.height * 0.38,
        child: SvgPicture.asset(iconLocation),
      ),
      SizedBox(
        height: size.height * 0.048,
      ),
      const Text(
        'Доступ к геопозиции',
        style: TextStyle(fontSize: 24, letterSpacing: 0.15, color: kPrimariTextColor),
      ),
      SizedBox(height: size.height * 0.024),
      const Text(
        'Разрешите приложению использовать',
        softWrap: true,
        style: TextStyle(fontSize: 16, letterSpacing: 0.15, color: kPrimariTextColor),
      ),
      SizedBox(height: size.height * 0.014),
      const Text(
        'данные о вашем местоположении',
        style: TextStyle(fontSize: 16, letterSpacing: 0.15, color: kPrimariTextColor),
      ),
      SizedBox(
        height: size.height * 0.3,
      ),
      Container(
          width: size.width * defaultPaddingButtoms,
          height: size.height * 0.078,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), color: kPrimaryBuleColor),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/tracking/login');
              },
              child: const Text(
                'РАЗРЕШИТЬ ОТСЛЕЖИВАТЬ',
                style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 1.25),
              ))),
    ]));
  }
}
