import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/controllers/auth_controller.dart';
import 'package:e_commerce/views/auth_screen/login_screen.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';
import 'components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //edit profile button

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.edit, color: whiteColor))
                .onTap(() {}),
          ),

          //User details section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(imgProfile2, width: 80, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    "Customer@example.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () async {
                      await Get.put(AuthController()).signoutMethod(context);
                      Get.offAll(()=> const LoginScreen());
                    },
                    child: logout.text.fontFamily(semibold).white.make()),
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  width: context.screenWidth / 3.4,
                  count: "00",
                  title: "In your cart"),
              detailsCard(
                  width: context.screenWidth / 3.4,
                  count: "56",
                  title: "In your wishlist"),
              detailsCard(
                  width: context.screenWidth / 3.4,
                  count: "150",
                  title: "Your Orders"),
            ],
          ),
          //button section

          ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(color: lightGrey);
                  },
                  itemCount: profileButtonList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonIcons[index],
                        width: 22,
                      ),
                      title: profileButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    );
                  })
              .box
              .white
              .rounded
              .margin(const EdgeInsets.all(12))
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .shadowSm
              .make()
              .box
              .color(redColor)
              .make(),
        ],
      )),
    ));
  }
}
