# Stroll App Documentation

---

## Folder Structure

This document outlines the folder structure used in the application to maintain a clean and scalable codebase. The structure adheres to a **feature-first clean code architecture**, ensuring modularity, maintainability, and ease of development.

### **Project Root Structure**
```plaintext
lib/
├── src/
│   ├── features/
│   │   ├── feature1/
│   │   ├── feature2/
│   │   └── ...
│   ├── common/
│   │   ├── config/
│   │   ├── utils/
│   │   ├── widgets/
│   │   ├── services/
│   └── app.dart
└── main.dart
```

#### **`features/`**
This folder contains all the individual feature modules. Each feature is self-contained and divided into layers:

- **`data/`**: Handles data operations such as API calls, local database, and data mapping.
    - **`datasources/`**: Contains remote (API) and local (database) data sources.
    - **`models/`**: Data transfer objects (DTOs) used for mapping data.
    - **`repositories/`**: Implements domain repositories using data sources.

- **`domain/`**: Represents the core business logic and models of the feature.
    - **`entities/`**: Core business models used throughout the app.
    - **`repositories/`**: Abstract repository interfaces implemented in the `data/` layer.
    - **`usecases/`**: Business logic encapsulated in single-purpose classes.

- **`presentation/`**: Manages UI and state.
    - **`bloc/`**: State management using Bloc, Cubit, or any preferred pattern.
    - **`screens/`**: Pages and screens for the feature.
    - **`widgets/`**: Reusable widgets specific to the feature.
    - **`routes.dart`**: Defines feature-specific navigation routes.

#### **`common/`**
Contains shared resources and utilities used across multiple features:

- **`config/`**: App-level configurations like themes, routes, and constants.
- **`utils/`**: Utility classes, extensions, and helpers.
- **`widgets/`**: Shared, reusable UI components.
- **`services/`**: Global services (e.g., API client, local storage).

#### **`app.dart`**
Entry point for initializing the Flutter `MaterialApp` or `CupertinoApp` with global configurations.

#### **`main.dart`**
The entry file for the Flutter app that initializes the `app.dart`.

---

## Asset Folder Structure

Assets are organized into subfolders based on their type to maintain clarity and ease of use.

```plaintext
assets/
├── images/
│   |    
│   └── ...
├── icons/
│   |
│   └── ...
├── fonts/
│   ├── roboto/
│   │   ├── Roboto-Regular.ttf
│   │   ├── Roboto-Bold.ttf
│   │   └── ...
│   └── open_sans/
│       ├── OpenSans-Regular.ttf
│       ├── OpenSans-Bold.ttf
│       └── ...
└── lottie/
    ├── loading.json
    ├── success.json
    └── ...
```

### **Subfolder Details**

#### **`images/`**
Contains all static images used in the app. Each feature can have its own subfolder for feature-specific images, ensuring separation.

#### **`icons/`**
Stores all vector or raster icons used throughout the app. Icons can be further categorized by features for organization.

#### **`fonts/`**
Contains all custom fonts used in the app. Fonts should be grouped by family, with individual styles (e.g., Regular, Bold) clearly labeled.

#### **`lottie/`**
Stores Lottie animation files used for dynamic visuals such as loaders or success animations.

---

## Approach

The app follows a **feature-first clean code architecture**, focusing on:

1. **Scalability**: Features are modular and can be developed or modified independently.
2. **Maintainability**: Separation of concerns ensures clear boundaries between data, domain, and presentation layers.
3. **Reusability**: Shared components and utilities reside in `common/`, promoting reusability.
4. **Testability**: Layers like `usecases/` and `repositories/` are designed for easier unit testing.
5. **Readability**: Clear structure ensures developers can quickly onboard and understand the codebase.

---

## Notes

1. **State Management**: The app uses Bloc for state management, ensuring a predictable and testable UI state. Also due to its ability to handle complex state transitions, such as matching algorithms, user preferences, and real-time interactions.
2. **Theming**: Themes are managed globally in `common/config/`.
3. **Localization**: Future-proofed to support multiple languages by adding `locales/` under `assets/`.
4. **Dependency Injection**: `get_it` is used for dependency injection to maintain loose coupling.

---
