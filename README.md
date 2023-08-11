# mc_poc

A new Flutter challenge.

# Get Started with Flutter Application

## Prerequisites

1. **Flutter SDK**: Ensure you have Flutter installed on your machine. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).

2. **Editor**: It's recommended to use [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) with Flutter plugins installed for a better development experience.

3. **Emulator or Physical Device**: To run the application, you'd need an Android or iOS emulator. Alternatively, you can also use a physical device.

## Steps to Run the Application

1. **Clone the Repository**:
git clone [flutter challenge](https://github.com/Csejrup/flutter_challenge.git)
cd MC_POC

2. **Fetch Dependencies**:
After navigating to your project directory, fetch all the required dependencies:
```python
flutter pub get
```
4. **Start Your Emulator or Connect Your Device**:
- For Android Studio: Open AVD Manager, create/start your emulator.
- For VS Code: Ensure you have the necessary extensions and start the emulator from the command palette.
- For a physical device: Connect it to your computer and make sure you have developer options and USB debugging enabled.

4. **Run the Application**:
With an emulator running or a device connected, run:

## Troubleshooting

1. **Flutter Not Found**: If you get a 'flutter command not found' error, ensure the Flutter SDK path is added to your system's `PATH`.

2. **Emulator Issues**: Ensure your emulator is properly configured with Google Play Services and it has a compatible API level.

3. **Dependency Issues**: If you face any issues related to dependencies, try to clean and fetch again:
```python
flutter clean
flutter pub get
```
## File Structure

lib/
|-- main.dart
|-- src/
    |-- models/
        |-- user.dart
        |-- address.dart
        |-- company.dart
        |-- geo.dart
    |-- repositories/
        |-- user_repository.dart
    |-- views/
        |-- user_list_view.dart
        |-- user_detail_view.dart
    |-- providers/
        |-- user_provider.dart
