# 📦 Set Up Flutter Architecture

Este repositorio proporciona scripts para automatizar la creación de la arquitectura base de un proyecto Flutter. Facilita la generación de carpetas y archivos esenciales, permitiendo iniciar el desarrollo de manera rápida y organizada.

## 🚀 ¿Qué incluye?

- **core**: Crea la estructura de carpetas principal del proyecto.
- **feature**: Genera la estructura para una nueva funcionalidad o módulo.
- **base**: Ejecuta ambos scripts anteriores para configurar la arquitectura completa del proyecto e instala paquetes.

## 🛠️ Requisitos previos

- Tener instalado [Flutter](https://flutter.dev/docs/get-started/install) en tu sistema.
- Acceso a una terminal con conexión a internet.

## ⚙️ Instalación y uso

### 1. Configurar la arquitectura completa

```dart
flgen base
```

### 2. Configurar solo la estructura principal
```dart
flgen core
```

### 3. Agregar una nueva funcionalidad o módulo
```dart
flgen feature <name>
```

## 📁 Estructura generada
Se crea la siguiente estructura de carpetas:

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

> Nota: Puedes personalizar los nombres de las carpetas y archivos según las necesidades de tu proyecto.
>

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si deseas mejorar o agregar nuevas funcionalidades, por favor abre un [issue](https://github.com/joalmr/flgen-dart/issues) o envía un [pull request](https://github.com/joalmr/flgen-dart/pulls).