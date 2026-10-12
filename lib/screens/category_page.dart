import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;

  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    // Filter products according to the selected category ("All" shows everything)
    final List<Product> filtered = categoryName == 'All'
        ? products
        : products.where((p) => p.category == categoryName).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: filtered.isEmpty
          ? const Center(child: Text('No products found in this category'))
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: filtered.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 280, // fixed height avoids overflow errors
              ),
              itemBuilder: (context, index) =>
                  ProductCard(product: filtered[index]),
            ),
    );
  }
}
