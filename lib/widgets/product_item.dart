import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String ImageUrl;
  final String id;
  final String title;

  ProductItem(
    this.title,
    this.ImageUrl,
    this.id,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        ImageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        backgroundColor: Colors.black45,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
