class Application {
  KeyValueRepository secureStorage;
  Config config;

  Application({
    this.config,
  });

  Future<void> setup() async {
    // Plugin is broken at the moment...
    // secureStorage = KeyValueSecureStorageRepository(

    setupRepositories();

    var isAuthenticated = true;

    setupBlocs(
      isAuthenticated: isAuthenticated,
    );
  }

  void setupRepositories() {}

  void setupBlocs({
    bool isAuthenticated,
  }) {}

  Future<void> init() async {}

  void dispose() {}
}

class Config {}

class KeyValueRepository {}
