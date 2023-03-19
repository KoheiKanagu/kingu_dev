import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:yaml/yaml.dart';

@Task(
  '依存を全てbumpする',
)
Future<void> bumpAllDeps() async {
  flutterPubAdd('.');
}

void flutterPubAdd(String pubspecDirPath) {
  final file = File(
    Directory('$pubspecDirPath/pubspec.yaml').path,
  ).readAsStringSync();

  final pubspec = loadYaml(file) as YamlMap;

  final dependencies = (pubspec['dependencies'] as YamlMap)
      .entries
      .where((e) => e.value is String)
      .where((e) => e.value != 'any')
      .map((e) => e.key as String);

  final devDependencies = (pubspec['dev_dependencies'] as YamlMap)
      .entries
      .where((e) => e.value is String)
      .where((e) => e.value != 'any')
      .map((e) => 'dev:${e.key}');

  run(
    'flutter',
    arguments: [
      'pub',
      'add',
      '--directory',
      pubspecDirPath,
      '--no-precompile',
      ...dependencies,
      ...devDependencies,
    ],
  );
}
