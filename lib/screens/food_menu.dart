import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';


class Foodmenu extends StatelessWidget {
  const Foodmenu({super.key});

  final List itens =comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
    child: CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Text('Menu',textAlign:
            TextAlign.center, style: TextStyle(fontFamily: 'Caveat',fontSize: 32),),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return FoodItem(itemTitle: itens[index]['name'], itemPrice: itens[index]['price'],imageURI: itens[index]['image']);
          }, childCount: itens.length))
      ],
    ),);

  }
}
