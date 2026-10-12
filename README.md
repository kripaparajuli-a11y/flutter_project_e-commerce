# MyShop – Mini E-Commerce Flutter App

**Student Name:** Kripa Parajuli
**Student ID:** 2510112344
**Course:** CIS099-2 Mobile Application Development (Flutter)
**Instructor:** Milan Yadav

## Description

MyShop is a simple multi-screen e-commerce application built with Flutter. It shows
products grouped by category and lets users move from the home page to a category
page and to a product-details page. All data is static/local (no backend, login,
payment or database).

## Features

- Home page with `AppBar` (logo, search and cart icons)
- Auto-playing promotional banner carousel (3 banners, each opens a category)
- Horizontally scrolling category list (`SingleChildScrollView`)
- "Popular Products" section with reusable `ProductCard` widgets
- `ProductCard` built with `Card`, `Container`, `Stack` (badge + favorite icon) and a "View Details" button
- Category page with `GridView.builder`, filtered by the selected category
- Product details page: image, name, category, rating, price, description, **Add to Cart** (shows a `SnackBar`)
- Navigation with `Navigator.push` / `MaterialPageRoute`, passing the category name and `Product` object

## Screenshots

| Home Page | Category Page | Product Details |
|-----------|---------------|-----------------|
| <img width="370" height="767" alt="mobile-iPhone_17_Pro_Max (4)" src="https://github.com/user-attachments/assets/0c4a8d45-860f-4db1-98bb-bbc4c6e2037f" />
 | <img width="370" height="767" alt="mobile-iPhone_17_Pro_Max (7)" src="https://github.com/user-attachments/assets/7efacfc2-d0a0-470d-91e7-46750e18a7c7" />
 | <img width="370" height="767" alt="mobile-iPhone_17_Pro_Max (8)" src="https://github.com/user-attachments/assets/c9e01049-9211-4066-bfc4-b4ed900da74f" />
 |

## Packages Used

- [`carousel_slider`](https://pub.dev/packages/carousel_slider) – creates the auto-playing
  banner carousel on the home page. It handles swiping, auto-play and page-change callbacks,
  which would take a lot of custom code with plain Flutter widgets.

## Project Structure

```
lib/
├── main.dart
├── models/product.dart
├── data/product_data.dart
├── screens/
│   ├── home_page.dart
│   ├── category_page.dart
│   └── product_details_page.dart
└── widgets/
    ├── product_card.dart
    ├── category_item.dart
    └── banner_carousel.dart
```

## How to Run

```bash
git clone https://github.com/kripaparajuli-a11y/flutter_project_e-commerce.git
cd flutter_project_e-commerce
flutter pub get
flutter run
```

Product and banner images are loaded from public URLs, so an internet connection is needed.
