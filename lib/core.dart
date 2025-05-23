import 'dart:io';

Future<void> runCore() async {
  Future<void> crearArchivo(String ruta, String contenido) async {
    final archivo = File(ruta);
    await archivo.create(recursive: true);
    await archivo.writeAsString(contenido);
    print('Creado: $ruta');
  }

  print(
      'Iniciando la creación de la estructura de carpetas y archivos Dart...');

  await Directory('lib/core/animation').create(recursive: true);
  await crearArchivo('lib/core/animation/animation.dart', '// animation\n');

  await Directory('lib/core/routes').create(recursive: true);
  await crearArchivo('lib/core/routes/routes.dart', '// routes\n');

  await Directory('lib/core/config').create(recursive: true);
  await crearArchivo('lib/core/config/config.dart', '''
// config
export "injection.dart";
export "di.dart";
''');
  await crearArchivo('lib/core/config/di.dart', '// config');
  await crearArchivo('lib/core/config/injection.dart', '''
// config
import "package:flutter/material.dart";

class DependencyInjection {
    static Future<void> init() async {
        WidgetsFlutterBinding.ensureInitialized();
    }
}
''');

  await Directory('lib/core/constants').create(recursive: true);
  await crearArchivo('lib/core/constants/constants.dart', '''
// constants
export "colors.dart";
export "text_style.dart";
''');
  await crearArchivo('lib/core/constants/colors.dart', '''
// constants
import "package:flutter/material.dart";

class AppColor {
    static Color black = const Color(0xFF000000);
    static Color white = const Color(0xFFFFFFFF);
    static Color primaryColor = const Color(0xFF00703C);
    static Color backgroundColor = Colors.white;
    static Color textColor = Colors.black;
    static Color textColorContrast = Colors.white;
}
''');
  await crearArchivo('lib/core/constants/text_style.dart', '''
// constants
import "package:flutter/material.dart";

mixin Font implements FontWeight {
    static FontWeight get l => FontWeight.w300;
    static FontWeight get n => FontWeight.w400;
    static FontWeight get sb => FontWeight.w500;
    static FontWeight get b => FontWeight.w700;
}

class AppTextStyle extends TextStyle {
    static TextStyle get header => const TextStyle();
}
''');

  await Directory('lib/core/errors').create(recursive: true);
  await crearArchivo('lib/core/errors/error.dart', '// errors');

  await Directory('lib/core/theme').create(recursive: true);
  await crearArchivo('lib/core/theme/theme.dart', '''
// theme
import "package:flutter/material.dart";
import "../constants/constants.dart";

ThemeData themeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.backgroundColor,
);
''');

  await Directory('lib/core/utils').create(recursive: true);
  await crearArchivo('lib/core/utils/utils.dart', '// utils');

  await Directory('lib/core/widgets').create(recursive: true);
  await crearArchivo('lib/core/widgets/widgets.dart', '// widgets');

  print('¡Estructura y archivos creados con éxito!');
}
