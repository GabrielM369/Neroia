import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:neroia_app/core/config/environment_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

enum SecureStorageKeys {
  token('token'),
  userId('userId'),
  password('password'),
  aiModel('aiModel'),
  env('env');

  final String key;
  const SecureStorageKeys(this.key);
}

@riverpod
class SecureStorage extends _$SecureStorage {
  late FlutterSecureStorage _storage;
  late String _environmentPrefix;

  @override
  void build() {
    _environmentPrefix = ref.watch(envProvider).type.name;
    _storage = FlutterSecureStorage();
  }

  String _prefixedKey(SecureStorageKeys key) => '${_environmentPrefix}_${key.key}';

  Future<String?> read(SecureStorageKeys key) => _storage.read(key: _prefixedKey(key));

  Future<void> write(SecureStorageKeys key, String value) => _storage.write(key: _prefixedKey(key), value: value);

  Future<bool> containsKey(SecureStorageKeys key) => _storage.containsKey(key: _prefixedKey(key));

  Future<void> delete(SecureStorageKeys key) => _storage.delete(key: _prefixedKey(key));

  Future<void> deleteEnv() async {
    final allKeys = await _storage.readAll();
    final keysToDelete = allKeys.keys.where((key) => key.startsWith(_environmentPrefix));
    for (final key in keysToDelete) {
      await _storage.delete(key: key);
    }
  }

  Future<void> updateEnv(EnvironmentType value) async =>
      _storage.write(key: SecureStorageKeys.env.key, value: value.name);

  Future<EnvironmentType> readEnv() async {
    final envString = await _storage.read(key: SecureStorageKeys.env.key);
    return EnvironmentType.values.firstWhere(
      (e) => e.name == envString,
      // TODO: update this to prod when we have a prod environment
      orElse: () => EnvironmentType.defaultEnv,
    );
  }
}
