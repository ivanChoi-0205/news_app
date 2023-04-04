class NetworkConnectivity {
  static NetworkConnectivity? _instance;
  factory NetworkConnectivity() => _instance ??= NetworkConnectivity._();
  NetworkConnectivity._();

  init() {
    // TODO: network checking in each http call using connectivity_plus packages
  }
}
