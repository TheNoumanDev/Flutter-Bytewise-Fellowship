import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/category_screen/category_detail.dart';
import 'package:e_commerce/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200), itemBuilder: (context, index){
            return Column(
              children: [
                Image.asset(categoriesImages[index], height: 120, width: 200, fit: BoxFit.cover,),
                categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadow.make().onTap(() {
              Get.to(()=> CategoryDetail(title: categoriesList[index]));
            });
          }),
        ),
      )
    );
  }
}