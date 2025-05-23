import 'dart:io';
import 'core.dart';
import 'feature.dart';

Future<void> runBase() async {
  await runCore();
  await runFeature('firstFeature');

  Future<void> crearArchivo(String ruta, String contenido) async {
    final archivo = File(ruta);
    await archivo.create(recursive: true);
    await archivo.writeAsString(contenido);
    print('Creado: $ruta');
  }

  final paquetes = [
    'go_router',
    'provider',
    'equatable',
    'intl',
    'logger',
    'flutter_dotenv'
  ];

  for (final paquete in paquetes) {
    print('Agregando paquete: $paquete...');
    final result = await Process.run('flutter', ['pub', 'add', paquete]);
    stdout.write(result.stdout);
    stderr.write(result.stderr);
  }

  await crearArchivo('.env', '# PRODUCTION');
  await crearArchivo('.env.dev', '# DEVELOPMENT');

  print('¡Proyecto configurado!');
}
