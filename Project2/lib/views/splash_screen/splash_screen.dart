import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/auth_screen/login_screen.dart';
import 'package:e_commerce/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Creating a method to change screen
  changeScreen(){
    Future.delayed(const Duration(seconds:3),() {
      //using GetX
      Get.to(()=> const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,child: Image.asset("assets/icons/splash_login_registration_background_image.png",width: 300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.make(),
            30.heightBox,
            // Splash Screen Created
          ],
        ),
      ),
    );
  }
}
