# 🛍️ Store App

A modern Flutter application for browsing and updating products, built using **Clean Service Layer Architecture** and consuming the **FakeStore API**.

---

## ✨ Features

- 📦 **Browse Products**: Display a grid of products fetched dynamically from the FakeStore API.
- 🎨 **Custom Product Cards**: Visually appealing cards with floating product images, custom shadows, price formatting, and title truncation.
- ✏️ **Update Product Details**: Interactive form to edit product details (Title, Description, Price, Image) with asynchronous PUT API requests.
- ⏳ **Loading & Feedback**: Async state indicators using `ModalProgressHUD` and SnackBar feedback alerts.
- 🌐 **HTTP Api Helper Layer**: Reusable `Api` class handling `GET`, `POST`, and `PUT` HTTP methods, custom headers, bearer tokens, and error status code exceptions.

---

## 🛠️ Tech Stack & Packages

- **Framework**: [Flutter](https://flutter.dev/) (Dart)
- **HTTP Requests**: [`http`](https://pub.dev/packages/http)
- **Icons**: [`font_awesome_flutter`](https://pub.dev/packages/font_awesome_flutter)
- **Async HUD**: [`modal_progress_hud_nsn`](https://pub.dev/packages/modal_progress_hud_nsn)
- **API Backend**: [FakeStore API](https://fakestoreapi.com/)

---

## 📁 Project Structure

```
lib/
├── helper/
│   ├── api.dart                 # Reusable HTTP helper (GET, POST, PUT)
│   └── show_snack_bar.dart      # Helper for SnackBar alerts
├── models/
│   ├── product_model.dart       # Product data model with JSON parsing
│   └── rating_model.dart        # Rating data model with JSON parsing
├── services/
│   ├── get_all_products_service.dart # Fetch all products API
│   ├── all_categories_service.dart   # Fetch product categories API
│   ├── get_category_service.dart     # Fetch products by category API
│   ├── add_product_service.dart      # Add new product API (POST)
│   └── update_product_service.dart   # Update product API (PUT)
├── views/
│   ├── home_view.dart           # Home screen with products grid
│   └── update_product_view.dart # Update product form screen
├── widgets/
│   ├── custom_card.dart         # Product card item widget
│   ├── custom_text_field.dart   # Styled input text field widget
│   └── custom_elevated_button.dart # Custom primary button widget
└── main.dart                    # Application entry point & route definitions
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>= 3.18.0)
- Dart SDK (>= 3.12.0)

### Installation

1. **Clone the repository** (or navigate to project directory):
   ```bash
   cd store_app
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the application**:
   ```bash
   flutter run
   ```

---

## 🔗 API Reference

The app uses the following endpoints from **FakeStore API**:

| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/products` | Fetch all products |
| `GET` | `/products/categories` | Fetch all categories |
| `GET` | `/products/category/:name` | Fetch products in a specific category |
| `POST` | `/products` | Create a new product |
| `PUT` | `/products/:id` | Update an existing product |
