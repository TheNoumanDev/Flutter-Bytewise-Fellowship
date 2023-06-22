import 'package:e_commerce/consts/consts.dart';

Widget homeButtons({height, width, icon, String? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.white.rounded.white.size(width, height).shadow3xl.make();
}