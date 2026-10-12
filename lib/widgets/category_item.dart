import 'package:flutter/material.dart';

import '../screens/category_page.dart';

/// Reusable circular category item. Tapping it opens the Category Page
/// and passes the category name to it.
class CategoryItem extends StatelessWidget {
  final String name;
  final IconData icon;

  const CategoryItem({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName: name),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: color.withValues(alpha: 0.12),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(height: 6),
            Text(name,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
