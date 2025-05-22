import 'dart:io';

Future<void> runFeature(String featureName) async {
  print('Creando estructura para la funcionalidad: $featureName...');

  Future<void> crearArchivo(String ruta, String contenido) async {
    final archivo = File(ruta);
    await archivo.create(recursive: true);
    await archivo.writeAsString(contenido);
    print('Creado: $ruta');
  }

  await Directory('lib/features/$featureName/data/datasources').create(recursive: true);
  await crearArchivo('lib/features/$featureName/data/datasources/${featureName}_datasources.dart', '''
//
abstract class DataSource {
  // ...
}

class DataSourceImpl implements DataSource {
  // ...
}
''');

  await Directory('lib/features/$featureName/data/models').create(recursive: true);
  await crearArchivo('lib/features/$featureName/data/models/${featureName}_models.dart', '''
//
import "../../domain/entities/${featureName}_entities.dart";

class Model extends Entity {
    // ...
}
''');

  await Directory('lib/features/$featureName/data/repositories_impl').create(recursive: true);
  await crearArchivo('lib/features/$featureName/data/repositories_impl/${featureName}_repositories_impl.dart', '''
//
import "../datasources/${featureName}_datasources.dart";
import "../../domain/repositories/${featureName}_repositories.dart";

class RepositoryImp implements Repository {
    final DataSource dataSource;

    RepositoryImp({required this.dataSource});
}
''');

  await Directory('lib/features/$featureName/domain/entities').create(recursive: true);
  await crearArchivo('lib/features/$featureName/domain/entities/${featureName}_entities.dart', '''
//
class Entity {
    // ...
}
''');

  await Directory('lib/features/$featureName/domain/repositories').create(recursive: true);
  await crearArchivo('lib/features/$featureName/domain/repositories/${featureName}_repositories.dart', '''
//
abstract class Repository {
  // ...
}
''');

  await Directory('lib/features/$featureName/domain/usecases').create(recursive: true);
  await crearArchivo('lib/features/$featureName/domain/usecases/${featureName}_usecases.dart', '''
//
import "../repositories/${featureName}_repositories.dart";

class UseCase {
    final Repository repository;

    UseCase({required this.repository});
}
''');

  await Directory('lib/features/$featureName/presentation/pages').create(recursive: true);
  await Directory('lib/features/$featureName/presentation/widgets').create(recursive: true);

  print('¡Estructura de feature creada!');
}