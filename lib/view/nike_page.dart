import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/models/shoesmodel.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class NikePage extends StatefulWidget {
  const NikePage({
    super.key,
  });

  @override
  State<NikePage> createState() => _NikePageState();
}

class _NikePageState extends State<NikePage> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: items.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
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
                              "${items[index].shoesPrice}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            items[index].isFavorite = !items[index].isFavorite;
                            
                            setState(() {});
                          },
                          icon: items[index].isFavorite
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
                      items[index].shoesImage,
                      width: 110,
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      items[index].shoesName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 230,
      ),
    );
  }
}
