import 'package:ecommerce_portolio_app/core/constants/string_constant.dart';
import 'package:ecommerce_portolio_app/core/enums/image_constant.dart';
import 'package:ecommerce_portolio_app/core/extensions/context_extension.dart';
import 'package:ecommerce_portolio_app/feature/home/widget/image/home_image_card.dart';
import 'package:ecommerce_portolio_app/feature/home/widget/text/home_card_title.dart';
import 'package:flutter/material.dart';
part './sub_view/home_collection_card_container.dart';
part './sub_view/home_summer_sale_card.dart';
part './sub_view/home_black_card.dart';
part './sub_view/home_horizontal_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({this.homeCollectionTitle, super.key});
  final String? homeCollectionTitle;

  @override
  Widget build(BuildContext context) {
    final double? collectionSize = context.height - (context.height * 8 / 100);

    return Scaffold(
      body: Container(
        height: collectionSize,
        color: Colors.white,
        child: Column(
          children: [
            _HomeCollectionCardContainer(
              homeCollectionTitle: homeCollectionTitle,
              color: Colors.white,
              imageUrl:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? 'collection_dark.png'
                      : 'collection.png',
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        children: [
                          _HomeSummerSaleCard(),
                          _HomeBlackCard(),
                        ],
                      ),
                    ),
                    _HomeHorizontalCard(collectionSize: collectionSize),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
