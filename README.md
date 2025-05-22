# 📦 Set Up Flutter Architecture

This repository provides scripts to automate the setup of a base architecture for Flutter projects. It simplifies the generation of essential folders and files, allowing you to start development quickly and in an organized way.

## 🚀 What's Included?

- **core**: Creates the main folder structure of the project.
- **feature**: Generates the structure for a new feature or module.
- **base**: Runs both previous scripts to set up the full project architecture and install packages.

## 🛠️ Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your system.
- Access to a terminal with an internet connection.

## ⚙️ Installation & Usage

You can install `flgen` globally using:

```dart
dart pub global activate flgen
```

### 1. Set up the complete architecture

```dart
flgen base

```

### 2. Set up only the core structure

```dart
flgen core

```

### 3. Add a new feature or module

```dart
flgen feature <name>

```

## 📁 Generated Folder Structure

The following folder structure is created:

```css
lib/
├── core/
│   ├── animations/
│   ├── config/
│   ├── constants/
│   ├── errors/
│   ├── routes/
│   ├── theme/
│   ├── utils/
│   └── widgets/
├── features/
│   └── example_feature/
│       ├── data/
│       ├── domain/
│       └── presentation/
│── main.dart
│── .env
└── .env.dev
```

> Note: You can customize folder and file names based on your project’s needs.
> 

## 🤝 Contributions

Contributions are welcome! If you'd like to improve or add new functionality, feel free to open an [issue](https://github.com/joalmr/flgen-dart/issues) or submit a [pull request](https://github.com/joalmr/flgen-dart/pulls).
