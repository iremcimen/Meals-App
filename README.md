# Meals App

A small Flutter app for browsing meals, viewing meal details, and marking favorites. Built with Flutter and Riverpod for state management.

## Features
- List of meals and category-based filtering
- Meal details with ingredients and steps
- Favorite toggle with animated icon and SnackBar feedback
- Optional AppBar for screens (reusable MealsScreen)

## Requirements
- Flutter (stable) SDK installed
- Dart (comes with Flutter)
- Compatible device/emulator (Android, iOS, or desktop)

## Setup & Run
1. Open a terminal in the project folder:
   - Windows (PowerShell/CMD): cd "c:\Users\10ire\OneDrive\Desktop\flutter_projects\fifth_app"
2. Get packages:
   flutter pub get
3. Run the app:
   flutter run
   (or choose a specific device: flutter run -d <device-id>)

## Project Structure (key files)
- lib/main.dart — app entry
- lib/screens/meals.dart — meals list screen
- lib/screens/meal_details.dart — meal details and favorite toggle
- lib/widgets/meal_item.dart — meal list item widget
- lib/models/meal.dart — Meal model
- lib/providers/favorites_provider.dart — favorites state (Riverpod)

## Tests
No automated tests included yet. Add tests under the `test/` folder.

## Contributing
- Follow existing code style.
- Use clear commit messages (e.g., feat/, fix/, refactor/).
- Open issues or pull requests for changes.

## License
Specify your license here (e.g., MIT) or remove this section if not applicable.