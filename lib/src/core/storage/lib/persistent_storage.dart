import 'storage_repository.dart';

class PersistentStorage implements StorageRepository {
  static PersistentStorage? _instance;
  factory PersistentStorage() => _instance ??= PersistentStorage._();
  PersistentStorage._();

  @override
  Future<void> clear() async {
    try {
      // clear
      return;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        StorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<void> delete({
    required String key,
  }) async {
    try {
      // delete
      return;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        StorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<String?> read({
    required String key,
  }) async {
    try {
      // read
      return null;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        StorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<void> write({
    required String key,
  }) async {
    try {
      // write
      return;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        StorageException(error),
        stackTrace,
      );
    }
  }
}
