import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/home_screen/components/featured_buttons.dart';
import 'package:e_commerce/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height:context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchAnyThing,
                hintStyle: TextStyle(color: textfieldGrey)
              ),
            ),
          ),
          10.heightBox,

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //Brands Swipper
              VxSwiper.builder(
                autoPlay: true,
                aspectRatio: 16/9,
                enlargeCenterPage: true,
                height: context.screenHeight*0.17,
                itemCount: slidersList.length, 
                itemBuilder: ((context, index) {
                return
                  Image.asset(slidersList[index],
                  fit: BoxFit.cover,
                  ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).shadowLg.make();
              })),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) => homeButtons(
                height: context.screenHeight * 0.13,
                width: context.screenWidth / 2.75,
                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                title: index == 0 ? todayDeal : flashSale
              ))
              ),
              15.heightBox,
              //Brands Swipper 2
              VxSwiper.builder(
                autoPlay: true,
                aspectRatio: 16/9,
                enlargeCenterPage: true,
                height: context.screenHeight*0.17,
                itemCount: slidersList2.length, 
                itemBuilder: ((context, index) {
                return
                  Image.asset(slidersList2[index],
                  fit: BoxFit.cover,
                  ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).shadowLg.make();
              })),
              15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(3, (index) => homeButtons(
                height: context.screenHeight * 0.13,
                width: context.screenWidth / 3.5,
                icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                title: index == 0 ? topCategory : index == 1 ? brands : topSellers
              ))
              ),
              20.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: featCategory.text.size(20).color(darkFontGrey).make()
              ),
              20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(3, (index) => Column(
                    children: [
                      featuredButtons(icon: featuredImages1[index], title: featuredTitles1[index]),
                      10.heightBox,
                      featuredButtons(icon: featuredImages2[index], title: featuredTitles2[index])
                    ],
                  )).toList(),
                ),
              ),

              20.heightBox,
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: const BoxDecoration(color: redColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    featuredProducts.text.white.fontFamily(bold).size(18).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: List.generate(6, (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                          10.heightBox,
                          "Laptop 4GB/512GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.fontFamily(bold).color(redColor).size(16).make()
                        ],
                      ).box.margin(const EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(const EdgeInsets.all(8)).make()),),
                    )
                  ],
                ),
              ),

              //3rd Swipper
              10.heightBox,
              VxSwiper.builder(
                autoPlay: true,
                aspectRatio: 16/9,
                enlargeCenterPage: true,
                height: context.screenHeight*0.17,
                itemCount: slidersList2.length, 
                itemBuilder: ((context, index) {
                return
                  Image.asset(slidersList2[index],
                  fit: BoxFit.cover,
                  ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).shadowLg.make();
              })),

              // All Products
              20.heightBox,
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300), 
                itemBuilder: (context, index){
                return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5, width: 200, fit: BoxFit.cover),
                          const Spacer(),
                          10.heightBox,
                          "Laptop 4GB/512GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.fontFamily(bold).color(redColor).size(16).make()
                        ],
                      ).box.margin(const EdgeInsets.symmetric(horizontal: 4)).white.rounded.padding(const EdgeInsets.all(12)).make();
                })
              
              ]),
            ),
          )


        ],
      )),
      );
  }
}