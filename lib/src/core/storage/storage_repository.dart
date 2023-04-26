abstract class StorageRepository {
  Future<String?> read({
    required String key,
  });

  Future<void> write({
    required String key,
  });

  Future<void> delete({
    required String key,
  });

  Future<void> clear();
}

// sub class => shareprefres & secureStorage