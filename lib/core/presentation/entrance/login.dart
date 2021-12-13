import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_rjd/core/presentation/accepting_a_shift/accepting_a_shift.dart';
import 'package:project_rjd/core/presentation/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isButtomActive = false;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      final isButtomActive = controller.text.isNotEmpty;

      setState(() => this.isButtomActive = isButtomActive);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Добро пожаловать!',
          style: TextStyle(color: kPrimariTextColor, fontSize: 32),
        ),
        const SizedBox(height: 16),
        const Text(
          'Залогиньтесь!',
          style: TextStyle(color: kPrimariTextColor, fontSize: 16),
        ),
        const SizedBox(height: 84),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 16, right: 16),
          children: [
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'ЛОГИН',
                  hintStyle: TextStyle(color: kPrimariTextColor, fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kPrimariTextColor, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kPrimariTextColor, width: 0.5),
                  )),
            ),
            const SizedBox(height: 14),
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'ПАРОЛЬ',
                  hintStyle: TextStyle(color: kPrimariTextColor, fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kPrimariTextColor, width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kPrimariTextColor, width: 0.5),
                  )),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
            width: size.width * defaultPaddingButtoms,
            height: size.height * 0.078,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: kPrimaryBuleColor),
                onPressed: isButtomActive
                    ? () {
                        Navigator.of(context).pushReplacementNamed('AcceptingShift');
                      }
                    : null,
                child: const Text(
                  'ВОЙТИ',
                  style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 1.25),
                ))),
        SizedBox(
          height: size.height * 0.01,
        ),
        _RedBottom(size: size)
      ],
    ));
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
