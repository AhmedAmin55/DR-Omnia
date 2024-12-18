import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/view/nike_page.dart';
import 'package:storeapp_with_hazem/core/models/shoesmodel.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class FavoratePage extends StatefulWidget {
  const FavoratePage({super.key});

  @override
  State<FavoratePage> createState() => _FavoratePageState();
}

class _FavoratePageState extends State<FavoratePage> {
  @override
  List<ShoesModel> favoriteShose =
      items.where((element) => element.isFavorite == true).toList();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 210,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15),
              itemCount: favoriteShose.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 20,
                  width: 10,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "\$",
                                  style: TextStyle(
                                    color: AppColors.secondMainColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "${favoriteShose[index].shoesPrice}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {});
                                favoriteShose[index].isFavorite = false;
                              },
                              icon: favoriteShose[index].isFavorite
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: AppColors.grey,
                                    ),
                            ),
                          ],
                        ),
                        Image.asset(
                          favoriteShose[index].shoesImage,
                          width: 110,
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          favoriteShose[index].shoesName,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
