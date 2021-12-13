import 'package:flutter/material.dart';
import 'package:project_rjd/core/presentation/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
          ),
          Center(
            child: Container(
                width: size.width * defaultPaddingButtoms,
                height: size.height * 0.078,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kPrimaryBuleColor),
                    onPressed: () {
                      // Route route = MaterialPageRoute(builder: (context) => First());
                      // Navigator.push(context, route);
                    },
                    child: const Text(
                      'НАЧАТЬ',
                      style: TextStyle(fontSize: 15, color: Colors.white, letterSpacing: 1.25),
                    ))),
          ),
        ],
      ),
    );
  }
}
