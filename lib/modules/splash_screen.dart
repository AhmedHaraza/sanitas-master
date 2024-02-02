import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanitas/modules/welcome_page.dart';
import '../shared/components/appbar_widget.dart';
import '../shared/components/navigate_widget.dart';
import '../shared/styles/colors.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      navigateTo(context, const WelcomePage()); 
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      appBar: defaultAppbar(
        backgroundColorAppbar: splashColor,
        systemNavigationBarColor: splashColor4.withOpacity(.7),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.1,
                0.6,
                0.85,
                0.96,
              ],
              colors: [
                splashColor,
                splashColor2.withOpacity(.5),
                splashColor3.withOpacity(.6),
                splashColor4.withOpacity(.7),
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/splashImage.png'),
            SizedBox(height: 5.h,),
            SvgPicture.asset('assets/images/logoWord.svg')
          ],
        ),
      ),
    );
  }
}