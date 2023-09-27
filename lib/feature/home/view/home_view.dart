import 'package:ecommerce_portolio_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
part './sub_view/home_collection_card_container.dart';
part './sub_view/home_collection_card_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final double? collectionSize = context.height - (context.height * 8 / 100);

    return Scaffold(
      body: Container(
        height: collectionSize,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  _HomeCollectionCardContainer(
                    color: Colors.white,
                    imageUrl: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? 'collection_dark.png'
                        : 'collection.png',
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: _HomeCollectionCardTitle(
                        title: 'New collection',
                        titleColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                _HomeCollectionCardContainer(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: _HomeCollectionCardTitle(
                                      title: 'Summer sale',
                                      titleColor:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Stack(
                              children: [
                                _HomeCollectionCardContainer(
                                  color: Colors.white,
                                  imageUrl: 'black.png',
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 32,
                                    ),
                                    child: _HomeCollectionCardTitle(
                                      title: 'Black',
                                      titleColor: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          _HomeCollectionCardContainer(
                            color: Colors.white,
                            imageUrl:
                                context.platformBrightness == Brightness.dark
                                    ? 'hoodie_dark.png'
                                    : 'hoodie.png',
                          ),
                          Positioned(
                            left: 45,
                            right: 0,
                            top: collectionSize! / 5,
                            child: _HomeCollectionCardTitle(
                              title:
                                  "Men's ${context.platformBrightness == Brightness.dark ? 'hats' : 'hoodies'}",
                              titleColor: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
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
