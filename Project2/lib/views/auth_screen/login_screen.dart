import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/controllers/auth_controller.dart';
import 'package:e_commerce/views/auth_screen/signup_screen.dart';
import 'package:e_commerce/widgets_common/applogo_widget.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:e_commerce/widgets_common/our_button.dart';
import 'package:get/get.dart';

import '../../widgets_common/custom_textfeild.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AuthController());

    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log into $appname".text.fontFamily(bold).size(22).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextFeild(hint: emailHint, title: email, isPass: false, controller: controller.emailController),
                customTextFeild(hint: passwordHint, title: password, isPass: true, controller: controller.passwordController),
                Align(
                  alignment: Alignment.centerRight,
                  child:TextButton(onPressed: (){}, child: forgetPass.text.make())
                  ),
                  ourButton(title: login, color: redColor, textColor: whiteColor, onPress: () async {
                    await controller.loginMethod(context: context).then((value){
                      if (value != null) {
                        VxToast.show(context, msg: loggedin);
                        Get.offAll(()=> const Home());
                      }
                    });
                  }).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  ourButton(title: signup, color: lightGolden, textColor: redColor, onPress: (){Get.to(()=> const SignUpScreen());}).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(socialIconList[index], width: 30,),
                      ),
                    )),
                  )
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadow2xl.make(),
          ],
        ),
      ),
    ));
  }
}