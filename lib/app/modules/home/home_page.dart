import 'package:arsifa/app/core/config/ScreenResponsive.dart';
import 'package:arsifa/app/data/controllers/aplikasi_akun/AppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

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
    final AppController appController = Get.put(AppController());
    return Center(
      child: Container(
        width: maxWidth,
        color: Colors.white,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: Image.asset('img/icon.png', height: 30),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                 Text('${appController.apps.length}'),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 20),
                    child: Text(
                      "Cari yang kamu butuhkan hari ini",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        color: Color(0xff272727),
                      ),
                    ),
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        color: Color(0xffffffff),
                        shadowColor: Color(0x4d939393),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Color(0xfff2f2f2),
                                  shape: BoxShape.circle,
                                ),
                                child:

                                    ///***If you have exported images you must have to copy those images in assets/images directory.
                                    Image(
                                  image: AssetImage('/img/logo.png'),
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Aplikasi Akun",
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: SelectableText(
                                          "manajemen aplikasi dan akun pengguna",
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14,
                                            color: Color(0xff6c6c6c),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff3a57e8),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.work_outlined,
                                  color: Color(0xffffffff),
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        color: Color(0xffffffff),
                        shadowColor: Color(0x4d939393),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Color(0xfff2f2f2),
                                  shape: BoxShape.circle,
                                ),
                                child:

                                    ///***If you have exported images you must have to copy those images in assets/images directory.
                                    Image(
                                  image: AssetImage('/img/logo.png'),
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "IT HELPDESK",
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: Text(
                                          "layanan bantuan IT",
                                          textAlign: TextAlign.start,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14,
                                            color: Color(0xff6c6c6c),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff3a57e8),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.work_outlined,
                                  color: Color(0xffffffff),
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
