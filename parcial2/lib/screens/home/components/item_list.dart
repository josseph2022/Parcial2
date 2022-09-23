import 'package:flutter/material.dart';

import '../../details/details_screen.dart';
import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            svgSrc: 'assets/icons/burger_beer.svg',
            title: 'Hamburguesas',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: 'assets/icons/chinese_noodles.svg',
            title: 'Pizza',
            press: () {},
          ),
        ],
      ),
    );
  }
}
