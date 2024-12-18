# Flutter Project Setup and Run Guide

Prerequisite to run this project
This project only configured in android

---

## **System Requirements**

- **Flutter Version**: 3.22.2 (Channel stable)
- **Dart Version**: 3.4.3
- **Operating System**: macOS 14.6 (Rosetta)
- **Android SDK Version**: 34.0.0
- **Java Version**: OpenJDK 17.0.10
- **IDE**: Android Studio (2023.3 JellyFish) or any compatible IDE with Flutter/Dart plugins installed.

---

Run for Android
- Clone repo - go to project directory
- run in terminal “flutter pub get” - to download libraries
- run “flutter run" to run in emulator
- run “flutter test" to run unit tests

Video Demo
[Watch the DEMO video on Google Drive](https://drive.google.com/file/d/1oG7-RYG_X8V6De3ioRh8wUuyvcfiavbF/view?usp=sharing)

APK Demo
[Download Demo APK](https://drive.google.com/file/d/1XQ6jhEMbG_bbeZxmtgUaL8CJpMVdqfvZ/view?usp=sharing)


## Project Structure

- **src**: The main source code directory.

    - **common**: Contains common files such as API endpoints, constants, exceptions, colors, screen sizes, and enums.

    - **data**: Responsible for data handling.

        - **datasource**: Data sources, such as API clients or databases.

        - **model**: Data models that represent your application's data.

        - **repository**: Data repositories, which abstract the data source.

    - **domain**: Contains the core business logic.

        - **entity**: Business entities or domain models.

        - **repository**: Interfaces that define how data is accessed in the domain layer.

        - **usecase**: Use cases that represent the application's business operations.

    - **presentation**: Handles the user interface and interaction.

        - **bloc**: BLoC classes responsible for managing the state of your application.

        - **cubit**: Cubit classes for more lightweight state management.

        - **page**: Flutter pages/screens.

        - **widget**: Reusable UI components.

    - **utilities**: Helper classes and utilities for the application.

- **injection.dart**: Dependency injection setup using GetIt.

- **main.dart**: The entry point of the Flutter application.