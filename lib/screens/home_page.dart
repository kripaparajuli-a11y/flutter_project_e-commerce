import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../widgets/banner_carousel.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
import 'category_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final popular = products.take(8).toList();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.shopping_bag,
                color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 8),
            const Text('MyShop',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Search coming soon')),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Your cart is empty')),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const BannerCarousel(),
            const SizedBox(height: 20),
            const _SectionTitle(title: 'Categories'),
            const SizedBox(height: 8),
            // Horizontal scrolling categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  for (final c in categories)
                    CategoryItem(name: c.name, icon: c.icon),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _SectionTitle(
              title: 'Popular Products',
              actionText: 'See All →',
              onAction: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const CategoryPage(categoryName: 'All'),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: popular.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) => SizedBox(
                  width: 170,
                  child: ProductCard(product: popular[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onAction;

  const _SectionTitle({required this.title, this.actionText, this.onAction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          if (actionText != null)
            TextButton(onPressed: onAction, child: Text(actionText!)),
        ],
      ),
    );
  }
}
