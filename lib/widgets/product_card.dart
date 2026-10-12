import 'package:flutter/material.dart';

import '../models/product.dart';
import '../screens/product_details_page.dart';

/// Reusable product card. Used on the home page and the category page.
class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;

  void _openDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsPage(product: widget.product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: InkWell(
        onTap: _openDetails,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image area with badge + favorite icon on top (Stack)
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) => progress == null
                        ? child
                        : const Center(
                            child: CircularProgressIndicator(strokeWidth: 2)),
                    errorBuilder: (context, error, stack) => Container(
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.image_not_supported,
                          color: Colors.grey),
                    ),
                  ),
                  if (product.badge != null)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: product.badge!.startsWith('-')
                              ? Colors.red
                              : Colors.green.shade700,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          product.badge!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        iconSize: 18,
                        icon: Icon(
                          _isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () =>
                            setState(() => _isFavorite = !_isFavorite),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Rs. ${product.price.toStringAsFixed(0)}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(Icons.star, size: 14, color: Colors.amber),
                      const SizedBox(width: 2),
                      Text(product.rating.toString(),
                          style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: SizedBox(
                width: double.infinity,
                height: 34,
                child: ElevatedButton(
                  onPressed: _openDetails,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text('View Details',
                      style: TextStyle(fontSize: 13)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
