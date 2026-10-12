# MyShop – Mini E-Commerce Flutter App

**Student Name:** Kripa Parajuli
**Student ID:** _2510112344_
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
| _add screenshot_ | _add screenshot_ | _add screenshot_ |

(Put images in a `screenshots/` folder and link them here.)

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
git clone https://github.com/<username>/mini-ecommerce-flutter.git
cd mini-ecommerce-flutter
flutter pub get
flutter run
```

Product and banner images are loaded from public URLs, so an internet connection is needed.
