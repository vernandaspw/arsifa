import 'package:arsifa/app/core/config/ScreenResponsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: LayoutBuilder(
        builder: (context, constraints) {
          DeviceType deviceType =
              ScreenResponsive.getDeviceType(constraints.maxWidth);
          double maxWidth =
              ScreenResponsive.getMaxWidth(deviceType, constraints.maxWidth);

          if (deviceType == DeviceType.Desktop) {
            return MobileView(maxWidth: maxWidth);
          } else if (deviceType == DeviceType.Laptop) {
            return MobileView(maxWidth: maxWidth);
          } else if (deviceType == DeviceType.Tablet) {
            return MobileView(maxWidth: maxWidth);
          } else {
            return MobileView(maxWidth: maxWidth);
          }
        },
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  final double maxWidth;
  MobileView({required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: maxWidth,
          color: Colors.white,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
                  image: AssetImage('img/icon.png'),
                  height: 100,
                  // width: 140,
                  fit: BoxFit.fill,
                ),

                SizedBox(
                  height: 50,
                  width: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "ARSIFA - Aplikasi RSUD Siti Fatimah",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        color: Colors.green[800],
                      ),
                    ),
                  ],
                ),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
