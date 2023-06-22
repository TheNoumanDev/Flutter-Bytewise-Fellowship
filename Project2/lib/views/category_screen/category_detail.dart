import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/category_screen/item_detail.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';


class CategoryDetail extends StatelessWidget {
  final String? title;
  const CategoryDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => 
                  "Baby Clothing".text.size(12).fontFamily(semibold).color(darkFontGrey).makeCentered()
                  .box.white.rounded.size(120, 60).margin(const EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),

              //items Container
              20.heightBox,
              Expanded(child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 250), itemBuilder: (context, index){
              return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5, height: 150, width: 200, fit: BoxFit.cover),
                        10.heightBox,
                        "Laptop 4GB/512GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$600".text.fontFamily(bold).color(redColor).size(16).make()
                      ],
                    ).box.margin(const EdgeInsets.symmetric(horizontal: 4)).white.shadow.rounded.padding(const EdgeInsets.all(12)).make().onTap(() {
                      Get.to(()=> const ItemDetail(title: "Dummy Title"));
                    });
              }))
            ],
          ),
        ),
      )
    );
  }
}