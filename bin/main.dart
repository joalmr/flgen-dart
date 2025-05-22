import 'dart:io';

import 'package:args/args.dart';
import 'package:flgen/base.dart';
import 'package:flgen/core.dart';
import 'package:flgen/feature.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addCommand('core')
    ..addCommand('feature')
    ..addCommand('base');

  final results = parser.parse(arguments);

  if (results.command == null) {
    print('Usage: flgen <command>');
    print('Available commands: core, feature <name>, arch');
    exit(1);
  }

  switch (results.command!.name) {
    case 'core':
      await runCore();
      break;
    case 'feature':
      final args = results.command!.arguments;
      final featureName = args.isNotEmpty ? args.first : 'featureName';
      await runFeature(featureName);
      break;
    case 'base':
      await runBase();
      break;
  }
}
