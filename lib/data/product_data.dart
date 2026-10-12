import 'package:flutter/material.dart';

import '../models/product.dart';

/// Category name + icon used by the horizontal category list.
class CategoryData {
  final String name;
  final IconData icon;
  const CategoryData(this.name, this.icon);
}

const List<CategoryData> categories = [
  CategoryData('Electronics', Icons.devices),
  CategoryData('Fashion', Icons.checkroom),
  CategoryData('Shoes', Icons.hiking),
  CategoryData('Beauty', Icons.face_retouching_natural),
  CategoryData('Accessories', Icons.watch),
  CategoryData('Home', Icons.chair),
];

/// Banner data for the carousel (title, image, category it links to).
class BannerData {
  final String title;
  final String subtitle;
  final String image;
  final String category;
  const BannerData(this.title, this.subtitle, this.image, this.category);
}

const List<BannerData> banners = [
  BannerData('Summer Sale', 'Up to 50% off Fashion',
      'https://images.unsplash.com/photo-1689326561417-78ad743ff4e2?q=80&w=1041&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D', 'Fashion'),
  BannerData('New Arrivals', 'Fresh styles for your feet',
      'https://plus.unsplash.com/premium_photo-1760559944817-ae2ae2027be1?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D', 'Shoes'),
  BannerData('Electronics Discount', 'Best deals on gadgets',
      'https://plus.unsplash.com/premium_photo-1723921242867-42dbc213fbd1?q=80&w=1137&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D', 'Electronics'),
];

// Static / local product data (no backend needed).
const List<Product> products = [
  // Electronics
  Product(
    name: 'iPhone 15',
    category: 'Electronics',
    image: 'https://images.unsplash.com/photo-1710023038502-ba80a70a9f53?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 129000,
    rating: 4.8,
    description:
        'Powerful smartphone with a stunning display, fast chip and an excellent camera.',
    badge: 'New',
  ),
  Product(
    name: 'Gaming Laptop',
    category: 'Electronics',
    image: 'https://images.unsplash.com/photo-1640955014216-75201056c829?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 145000,
    rating: 4.6,
    description:
        '16GB RAM, 512GB SSD and a dedicated graphics card for work and play.',
    badge: '-10%',
  ),
  Product(
    name: 'Wireless Headphones',
    category: 'Electronics',
    image: 'https://plus.unsplash.com/premium_photo-1679513691474-73102089c117?q=80&w=1113&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 3500,
    rating: 4.5,
    description: 'Wireless headphones with high-quality sound and 30h battery.',
    badge: 'Hot',
  ),
  Product(
    name: 'Smart Watch',
    category: 'Electronics',
    image: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 8500,
    rating: 4.3,
    description: 'Track your steps, heart rate and notifications on your wrist.',
  ),
  // Fashion
  Product(
    name: 'Classic T-Shirt',
    category: 'Fashion',
    image: 'https://images.unsplash.com/photo-1618354691373-d851c5c3a990?q=80&w=715&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 899,
    rating: 4.2,
    description: 'Soft 100% cotton t-shirt, comfortable for everyday wear.',
    badge: '-50%',
  ),
  Product(
    name: 'Denim Jacket',
    category: 'Fashion',
    image: 'https://images.unsplash.com/photo-1611312449408-fcece27cdbb7?q=80&w=669&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 3200,
    rating: 4.4,
    description: 'Timeless denim jacket that goes with every outfit.',
    badge: 'New',
  ),
  // Shoes
  Product(
    name: 'Running Sneakers',
    category: 'Shoes',
    image: 'https://plus.unsplash.com/premium_photo-1682435561654-20d84cef00eb?q=80&w=1018&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 4800,
    rating: 4.7,
    description: 'Lightweight sneakers with cushioned soles for long runs.',
    badge: 'Hot',
  ),
  Product(
    name: 'Leather Formal Shoes',
    category: 'Shoes',
    image: 'https://plus.unsplash.com/premium_photo-1670984281009-863453504c52?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 6200,
    rating: 4.1,
    description: 'Genuine leather formal shoes for office and events.',
  ),
  Product(
    name: 'Casual Loafers',
    category: 'Shoes',
    image: 'https://images.unsplash.com/photo-1777987601447-266e128de448?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 2900,
    rating: 4.0,
    description: 'Slip-on loafers that are easy to wear all day.',
  ),
  // Beauty
  Product(
    name: 'Face Moisturizer',
    category: 'Beauty',
    image: 'https://images.unsplash.com/photo-1598440947619-2c35fc9aa908?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 1200,
    rating: 4.5,
    description: 'Daily hydrating moisturizer suitable for all skin types.',
    badge: 'New',
  ),
  Product(
    name: 'Matte Lipstick',
    category: 'Beauty',
    image: 'https://images.unsplash.com/photo-1631214524049-0ebbbe6d81aa?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 750,
    rating: 4.3,
    description: 'Long-lasting matte lipstick with rich color.',
  ),
  // Accessories
  Product(
    name: 'Travel Backpack',
    category: 'Accessories',
    image: 'https://images.unsplash.com/photo-1509762774605-f07235a08f1f?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 2600,
    rating: 4.6,
    description: 'Water-resistant backpack with a padded laptop compartment.',
    badge: '-20%',
  ),
  Product(
    name: 'Sunglasses',
    category: 'Accessories',
    image: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 1500,
    rating: 4.2,
    description: 'UV-protected stylish sunglasses for sunny days.',
  ),
  // Home
  Product(
    name: 'Table Lamp',
    category: 'Home',
    image: 'https://images.unsplash.com/photo-1517991104123-1d56a6e81ed9?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 1800,
    rating: 4.4,
    description: 'Warm LED table lamp to brighten up your room.',
  ),
  Product(
    name: 'Cushion Set',
    category: 'Home',
    image: 'https://images.unsplash.com/photo-1575277340591-849c346c4542?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    price: 1400,
    rating: 4.1,
    description: 'Set of 2 soft decorative cushions for your sofa.',
    badge: 'New',
  ),
];
