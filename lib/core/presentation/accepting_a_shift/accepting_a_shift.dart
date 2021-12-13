import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_rjd/core/presentation/accepting_a_shift/take_photos/fisrt.dart';
import 'package:project_rjd/core/presentation/constants.dart';

class AcceptingShift extends StatelessWidget {
  const AcceptingShift({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 92),
          Center(
            child: Text(
              'Принятие Смены',
              style: TextStyle(color: kPrimariTextColor, fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 154.98),
          SvgPicture.asset(camera),
          SizedBox(height: 20),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 54),
              child: Text(
                'сделайте фото объекта в соответствии с примерами',
                style: TextStyle(
                    color: kPrimariTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25),
              ),
            ),
          ),
          SizedBox(height: 207),
          Container(
              width: size.width * defaultPaddingButtoms,
              height: size.height * 0.078,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: kPrimaryBuleColor),
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => First());
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    'НАЧАТЬ',
                    style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 1.25),
                  ))),
        ],
      ),
    );
  }
}
