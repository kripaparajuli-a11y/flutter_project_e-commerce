import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.category),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Image.network(
                product.image,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stack) => Container(
                  color: Colors.grey.shade200,
                  child: const Icon(Icons.image_not_supported,
                      size: 48, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: primary.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(product.category,
                        style: TextStyle(
                            color: primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 12),
                  Text(product.name,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(product.rating.toString(),
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text('Rs. ${product.price.toStringAsFixed(0)}',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: primary)),
                  const SizedBox(height: 20),
                  const Text('Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(product.description,
                      style: const TextStyle(
                          fontSize: 15, height: 1.5, color: Colors.black87)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 52,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text('Add to Cart', style: TextStyle(fontSize: 16)),
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product.name} added to cart'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
