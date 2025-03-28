# Aspen Travel App

Aspen Travel App is a Flutter-based mobile application that provides users with a seamless experience to explore travel destinations, book accommodations, and check out available facilities. The app follows a structured architecture and uses Cubit for state management.

## Features

- **Home Screen**: Displays popular and recommended travel destinations.
- **Search Functionality**: Allows users to find places using a search bar.
- **Detailed Destination Page**: Provides information about selected locations, including facilities, ratings, and booking options.
- **Navigation & Routing**: Handles screen transitions efficiently.

## Tech Stack

- **Flutter** (Dart)
- **Cubit** for state management
- **Custom UI Components** for better user experience
- **Responsive Design** for different screen sizes

## Project Structure

```
📦 aspen_travel_app
 ┣ 📂 common
 ┃ ┣ 📂 core
 ┃ ┃ ┣ 📂 config
 ┃ ┃ ┃ ┗ 📜 app_route.dart
 ┃ ┃ ┣ 📂 constants
 ┃ ┃ ┃ ┣ 📜 app_assets_roots.dart
 ┃ ┃ ┃ ┣ 📜 app_colors.dart
 ┃ ┃ ┃ ┣ 📜 app_dimensions.dart
 ┃ ┃ ┃ ┣ 📜 app_paths.dart
 ┃ ┃ ┃ ┗ 📜 app_strings.dart
 ┃ ┃ ┗ 📂 theme
 ┃ ┃ ┃ ┗ 📜 app_themes.dart
 ┣ 📂 features
 ┃ ┣ 📂 home
 ┃ ┃ ┣ 📂 domain
 ┃ ┃ ┣ 📂 service
 ┃ ┃ ┣ 📂 views
 ┃ ┃ ┃ ┣ 📂 widgets
 ┃ ┃ ┃ ┃ ┣ 📜 category_list_widget.dart
 ┃ ┃ ┃ ┃ ┣ 📜 location_widget.dart
 ┃ ┃ ┃ ┃ ┣ 📜 popular_list_widget.dart
 ┃ ┃ ┃ ┃ ┣ 📜 recommended_list_widget.dart
 ┃ ┃ ┃ ┃ ┗ 📜 search_text_widget.dart
 ┃ ┃ ┃ ┣ 📜 home_screen.dart
 ┃ ┃ ┃ ┗ 📜 splash_screen.dart
 ┃ ┣ 📂 inner_details
 ┃ ┣ 📂 main
 ┃ ┣ 📜 file_export.dart
 ┃ ┗ 📜 main.dart
 ┣ 📂 test
 ┗ 📜 README.md
```

## How to Run the Project

1. **Clone the repository**
   ```sh
   git clone https://github.com/your-repo/aspen_travel_app.git
   ```
2. **Navigate to the project directory**
   ```sh
   cd aspen_travel_app
   ```
3. **Install dependencies**
   ```sh
   flutter pub get
   ```
4. **Run the project**
   ```sh
   flutter run
   ```

## State Management

This project uses **Cubit** to manage state efficiently. Each feature follows a structured pattern with a `Cubit` managing the state logic.

## Contribution

If you’d like to contribute:
- Fork the repository.
- Create a new branch (`feature/your-feature`).
- Commit your changes.
- Push to the branch and create a pull request.

## License

This project is licensed under the MIT License.

