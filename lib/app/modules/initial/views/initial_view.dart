import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:get/get.dart';

import '../controllers/initial_controller.dart';

class InitialView extends GetView<InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            seconds: 5,
            gradientBackground: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
            navigateAfterSeconds: controller.verifyAuth(),
            loaderColor: Colors.transparent,
          ),
          Container(
            margin: EdgeInsets.all(120),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.contain,
            )),
          ),
        ],
      ),
    );
  }
}
